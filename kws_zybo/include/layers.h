#ifndef LAYERS_H
#define LAYERS_H

/* Tous les tenseurs sont en float32, rangés [N][H][W][C], canal le plus rapide. */

/* BatchNorm (inference), EN PLACE : x = gamma*(x-mean)/sqrt(var+eps) + beta, par canal. */
void batchnorm(float *x, int N, int H, int W, int C,
               const float *gamma, const float *beta,
               const float *mean, const float *var, float eps);

/* ReLU EN PLACE : x = max(0, x) sur 'size' valeurs. */
void relu(float *x, int size);

/* MaxPool 2x2, pas 2, sans padding : sortie [N][H/2][W/2][C]. */
void maxpool2d(const float *in, float *out, int N, int H, int W, int C);

/* Moyenne globale : [N][H][W][C] -> [N][C]. */
void gap(const float *in, float *out, int N, int H, int W, int C);

/* Dense : in [N][I], w [I][O], b [O] -> out [N][O]. */
void dense(const float *in, const float *w, const float *b, float *out, int N, int I, int O);

/* Softmax par ligne : in [N][K] -> out [N][K]. */
void softmax(const float *in, float *out, int N, int K);

#endif
