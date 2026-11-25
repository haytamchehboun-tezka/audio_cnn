#include <stddef.h>   /* NULL */
#include "conv.h"

void conv2d(const float *in, int N, int H, int W, int Cin,
            const float *kernel, const float *bias,
            int KH, int KW, int Cout, int stride, int pad,
            float *out)
{
    const int OH = (H + 2 * pad - KH) / stride + 1;
    const int OW = (W + 2 * pad - KW) / stride + 1;

    for (int n = 0; n < N; n++) {                          /* image du batch */
        for (int oy = 0; oy < OH; oy++) {                  /* ligne de sortie */
            for (int ox = 0; ox < OW; ox++) {              /* colonne de sortie */
                for (int co = 0; co < Cout; co++) {        /* filtre = canal de sortie */

                    float sum = (bias != NULL) ? bias[co] : 0.0f;

                    for (int ky = 0; ky < KH; ky++) {
                        for (int kx = 0; kx < KW; kx++) {
                            const int y = oy * stride + ky - pad;     /* pixel d'entree */
                            const int x = ox * stride + kx - pad;
                            if (y < 0 || y >= H || x < 0 || x >= W) continue;   /* zero padding */

                            for (int ci = 0; ci < Cin; ci++) {
                                const float v = in[((n * H + y) * W + x) * Cin + ci];
                                const float w = kernel[((ky * KW + kx) * Cin + ci) * Cout + co];
                                sum += v * w;
                            }
                        }
                    }

                    out[((n * OH + oy) * OW + ox) * Cout + co] = sum;
                }
            }
        }
    }
}
