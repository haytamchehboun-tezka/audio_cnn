#ifndef NN_OPS_H
#define NN_OPS_H

#define KSZ 3          /* noyau 3x3 pour toutes les convolutions */

/* BatchNorm en inference : y = scale*x + shift, calcule une seule fois par canal */
void bn_fold(const float *gamma, const float *beta, const float *mean, const float *var,
             int C, float *scale, float *shift);

/* Conv 3x3 'valid' (sans biais) -> BatchNorm (scale,shift) -> ReLU.
 * in : H x W x Cin     kernel : [3][3][Cin][Cout]     out : (H-2) x (W-2) x Cout */
void conv_bn_relu(const float *in, int H, int W, int Cin,
                  const float *kernel, const float *scale, const float *shift,
                  int Cout, float *out);

void maxpool2(const float *in, int H, int W, int C, float *out);        /* 2x2, pas 2 */
void gap(const float *in, int H, int W, int C, float *out);             /* moyenne par canal */
void dense(const float *in, const float *w, const float *b, int I, int O, float *out);
void softmax(const float *in, int n, float *out);

#endif
