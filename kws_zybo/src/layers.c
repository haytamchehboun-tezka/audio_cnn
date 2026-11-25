#include <math.h>
#include "layers.h"

void batchnorm(float *x, int N, int H, int W, int C,
               const float *gamma, const float *beta,
               const float *mean, const float *var, float eps)
{
    float scale[64], shift[64];                      /* C <= 64 */
    for (int c = 0; c < C; c++) {
        scale[c] = gamma[c] / sqrtf(var[c] + eps);   /* calcule une fois par canal */
        shift[c] = beta[c] - mean[c] * scale[c];
    }
    const int npix = N * H * W;                      /* nombre de pixels au total */
    for (int p = 0; p < npix; p++)
        for (int c = 0; c < C; c++)
            x[p * C + c] = x[p * C + c] * scale[c] + shift[c];
}

void relu(float *x, int size)
{
    for (int i = 0; i < size; i++)
        if (x[i] < 0.0f) x[i] = 0.0f;
}

void maxpool2d(const float *in, float *out, int N, int H, int W, int C)
{
    const int OH = H / 2, OW = W / 2;
    for (int n = 0; n < N; n++)
      for (int oy = 0; oy < OH; oy++)
        for (int ox = 0; ox < OW; ox++)
          for (int c = 0; c < C; c++) {
              float m = -3.4e38f;                    /* plus petit que tout float utile */
              for (int ky = 0; ky < 2; ky++)
                for (int kx = 0; kx < 2; kx++) {
                    float v = in[((n * H + (2 * oy + ky)) * W + (2 * ox + kx)) * C + c];
                    if (v > m) m = v;
                }
              out[((n * OH + oy) * OW + ox) * C + c] = m;
          }
}

void gap(const float *in, float *out, int N, int H, int W, int C)
{
    for (int n = 0; n < N; n++)
      for (int c = 0; c < C; c++) {
          float s = 0.0f;
          for (int y = 0; y < H; y++)
            for (int x = 0; x < W; x++)
                s += in[((n * H + y) * W + x) * C + c];
          out[n * C + c] = s / (float)(H * W);
      }
}

void dense(const float *in, const float *w, const float *b, float *out, int N, int I, int O)
{
    for (int n = 0; n < N; n++)
      for (int o = 0; o < O; o++) {
          float s = b[o];
          for (int i = 0; i < I; i++)
              s += in[n * I + i] * w[i * O + o];     /* w[i][o] */
          out[n * O + o] = s;
      }
}

void softmax(const float *in, float *out, int N, int K)
{
    for (int n = 0; n < N; n++) {
        const float *a = in + n * K;
        float *o = out + n * K;
        float m = a[0], s = 0.0f;
        for (int k = 1; k < K; k++) if (a[k] > m) m = a[k];
        for (int k = 0; k < K; k++) { o[k] = expf(a[k] - m); s += o[k]; }
        for (int k = 0; k < K; k++) o[k] /= s;
    }
}
