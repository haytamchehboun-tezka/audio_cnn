#ifndef CONV_H
#define CONV_H

/* Convolution 2D seule : pas de BatchNorm, pas de ReLU.
 *
 * Tenseurs en float32, ranges a plat (row-major) :
 *   in     : [N][H][W][Cin]        index = ((n*H + y)*W + x)*Cin + ci
 *   kernel : [KH][KW][Cin][Cout]   index = ((ky*KW + kx)*Cin + ci)*Cout + co   (ordre Keras)
 *   bias   : [Cout]                ou NULL si pas de biais
 *   out    : [N][OH][OW][Cout]     avec OH = (H + 2*pad - KH)/stride + 1, idem OW
 */
void conv2d(const float *in, int N, int H, int W, int Cin,
            const float *kernel, const float *bias,
            int KH, int KW, int Cout, int stride, int pad,
            float *out);

#endif
