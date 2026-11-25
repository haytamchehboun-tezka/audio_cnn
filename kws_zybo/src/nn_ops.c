#include "nn_ops.h"
#include <math.h>

#define BN_EPS 1e-3f   /* epsilon par defaut de Keras BatchNormalization */

/* ---------- BatchNorm : y = gamma*(x-mean)/sqrt(var+eps) + beta = scale*x + shift ---------- */
void bn_fold(const float *gamma, const float *beta, const float *mean, const float *var,
             int C, float *scale, float *shift)
{
    for (int c = 0; c < C; c++) {
        scale[c] = gamma[c] / sqrtf(var[c] + BN_EPS);
        shift[c] = beta[c] - mean[c] * scale[c];
    }
}

/* ---------- Convolution 3x3 + BN + ReLU ---------- */
void conv_bn_relu(const float *in, int H, int W, int Cin,
                  const float *kernel, const float *scale, const float *shift,
                  int Cout, float *out)
{
    const int OH = H - KSZ + 1;
    const int OW = W - KSZ + 1;
    float acc[64];                                   /* un accumulateur par filtre (Cout <= 64) */

    for (int oy = 0; oy < OH; oy++) {
        for (int ox = 0; ox < OW; ox++) {

            for (int co = 0; co < Cout; co++) acc[co] = 0.0f;

            for (int ky = 0; ky < KSZ; ky++) {
                for (int kx = 0; kx < KSZ; kx++) {
                    for (int ci = 0; ci < Cin; ci++) {
                        /* pixel d'entree (oy+ky, ox+kx, canal ci) */
                        float v = in[((oy + ky) * W + (ox + kx)) * Cin + ci];
                        /* debut des Cout poids de (ky,kx,ci) : ils sont contigus */
                        const float *w = &kernel[((ky * KSZ + kx) * Cin + ci) * Cout];
                        for (int co = 0; co < Cout; co++) acc[co] += v * w[co];
                    }
                }
            }

            float *o = &out[(oy * OW + ox) * Cout];  /* pixel de sortie (oy, ox) */
            for (int co = 0; co < Cout; co++) {
                float y = acc[co] * scale[co] + shift[co];   /* BN */
                o[co] = (y > 0.0f) ? y : 0.0f;               /* ReLU */
            }
        }
    }
}

/* ---------- MaxPool 2x2 stride 2 ---------- */
void maxpool2(const float *in, int H, int W, int C, float *out)
{
    const int OH = H / 2, OW = W / 2;
    for (int oy = 0; oy < OH; oy++) {
        for (int ox = 0; ox < OW; ox++) {
            for (int c = 0; c < C; c++) {
                float a = in[((2*oy    ) * W + 2*ox    ) * C + c];
                float b = in[((2*oy    ) * W + 2*ox + 1) * C + c];
                float d = in[((2*oy + 1) * W + 2*ox    ) * C + c];
                float e = in[((2*oy + 1) * W + 2*ox + 1) * C + c];
                float m = a;
                if (b > m) m = b;
                if (d > m) m = d;
                if (e > m) m = e;
                out[(oy * OW + ox) * C + c] = m;
            }
        }
    }
}

/* ---------- Global Average Pooling ---------- */
void gap(const float *in, int H, int W, int C, float *out)
{
    for (int c = 0; c < C; c++) out[c] = 0.0f;
    for (int p = 0; p < H * W; p++)
        for (int c = 0; c < C; c++) out[c] += in[p * C + c];
    for (int c = 0; c < C; c++) out[c] /= (float)(H * W);
}

/* ---------- Dense : out[o] = b[o] + sum_i in[i]*w[i*O+o] ---------- */
void dense(const float *in, const float *w, const float *b, int I, int O, float *out)
{
    for (int o = 0; o < O; o++) {
        float s = b[o];
        for (int i = 0; i < I; i++) s += in[i] * w[i * O + o];
        out[o] = s;
    }
}

/* ---------- Softmax ---------- */
void softmax(const float *in, int n, float *out)
{
    float m = in[0], s = 0.0f;
    for (int i = 1; i < n; i++) if (in[i] > m) m = in[i];
    for (int i = 0; i < n; i++) { out[i] = expf(in[i] - m); s += out[i]; }
    for (int i = 0; i < n; i++) out[i] /= s;
}
