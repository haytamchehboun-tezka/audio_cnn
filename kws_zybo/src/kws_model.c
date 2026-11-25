#include "kws_model.h"
#include "nn_ops.h"
#include "kws_all_weights.h"        /* tes poids Keras (a n'inclure que dans CE fichier) */

const char *const KWS_CLASSES[KWS_NCLASS] = { "go", "stop", "off", "on", "_silence_", "_unknown_" };

/* BN pre-calculee : scale/shift par canal pour chacun des 4 blocs */
static float sc1[16], sh1[16], sc2[32], sh2[32], sc3[64], sh3[64], sc4[64], sh4[64];

/* Deux buffers alternes pour les cartes de features (pas de malloc) */
static float bufA[97 * 127 * 16];   /* 197104 floats : le plus gros tenseur (sortie conv1) */
static float bufB[48 * 63 * 16];    /*  48384 floats : le plus gros apres pooling */

void kws_init(void)
{
    bn_fold(bn1_gamma, bn1_beta, bn1_moving_mean, bn1_moving_variance, 16, sc1, sh1);
    bn_fold(bn2_gamma, bn2_beta, bn2_moving_mean, bn2_moving_variance, 32, sc2, sh2);
    bn_fold(bn3_gamma, bn3_beta, bn3_moving_mean, bn3_moving_variance, 64, sc3, sh3);
    bn_fold(bn4_gamma, bn4_beta, bn4_moving_mean, bn4_moving_variance, 64, sc4, sh4);
}

int kws_infer(const float *spec, float *logits, float *probs)
{
    float feat[64];

    conv_bn_relu(spec, 99, 129,  1, conv1_kernel, sc1, sh1, 16, bufA);   /* 97x127x16 */
    maxpool2    (bufA, 97, 127, 16, bufB);                               /* 48x63x16  */
    conv_bn_relu(bufB, 48,  63, 16, conv2_kernel, sc2, sh2, 32, bufA);   /* 46x61x32  */
    maxpool2    (bufA, 46,  61, 32, bufB);                               /* 23x30x32  */
    conv_bn_relu(bufB, 23,  30, 32, conv3_kernel, sc3, sh3, 64, bufA);   /* 21x28x64  */
    maxpool2    (bufA, 21,  28, 64, bufB);                               /* 10x14x64  */
    conv_bn_relu(bufB, 10,  14, 64, conv4_kernel, sc4, sh4, 64, bufA);   /*  8x12x64  */
    gap         (bufA,  8,  12, 64, feat);                               /* 64        */
    dense       (feat, fc_kernel, fc_bias, 64, KWS_NCLASS, logits);      /* 6         */
    softmax     (logits, KWS_NCLASS, probs);

    int best = 0;
    for (int i = 1; i < KWS_NCLASS; i++) if (logits[i] > logits[best]) best = i;
    return best;
}
