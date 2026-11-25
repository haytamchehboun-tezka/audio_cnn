#ifndef KWS_MODEL_H
#define KWS_MODEL_H

#define KWS_NCLASS 6
extern const char *const KWS_CLASSES[KWS_NCLASS];

void kws_init(void);                                    /* a appeler une fois au demarrage */
int  kws_infer(const float *spec, float *logits, float *probs);  /* spec : 99x129, retourne la classe */

#endif
