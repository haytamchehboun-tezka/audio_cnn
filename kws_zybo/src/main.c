/* Test de validation : un spectrogramme exporte de Colab (kws_golden.h) passe dans le CNN C,
 * on compare les logits C aux logits Keras et on mesure le temps d'inference. */
#include <stdint.h>
#include "kws_model.h"
#include "kws_golden.h"      /* golden_in[99*129], golden_logits[6] */

#ifdef __arm__
  #include "xil_printf.h"
  #include "xtime_l.h"
  #define TIME_T      XTime
  #define TIME_NOW()  ({ XTime t_; XTime_GetTime(&t_); t_; })
  #define TIME_US(a,b) ((uint64_t)((b) - (a)) * 1000000ULL / COUNTS_PER_SECOND)
#else                         /* test sur PC */
  #include <stdio.h>
  #include <time.h>
  #define xil_printf printf
  #define TIME_T      uint64_t
  static uint64_t now_ns(void){ struct timespec t; clock_gettime(CLOCK_MONOTONIC,&t); return t.tv_sec*1000000000ULL+t.tv_nsec; }
  #define TIME_NOW()  now_ns()
  #define TIME_US(a,b) (((b)-(a))/1000ULL)
#endif

/* xil_printf ne sait pas afficher les float : on les ecrit en virgule fixe */
static void pf(float x)
{
    if (x < 0) { xil_printf("-"); x = -x; }
    int ip = (int)x;
    int fp = (int)((x - (float)ip) * 1000000.0f);
    xil_printf("%d.%06d", ip, fp);
}

int main(void)
{
    float logits[KWS_NCLASS], probs[KWS_NCLASS];

    kws_init();
    kws_infer(golden_in, logits, probs);            /* 1er appel : chauffe les caches */

    TIME_T t0 = TIME_NOW();
    int k = kws_infer(golden_in, logits, probs);
    TIME_T t1 = TIME_NOW();

    float maxerr = 0.0f;
    xil_printf("classe\t\tlogit C\t\tlogit Keras\tproba\r\n");
    for (int i = 0; i < KWS_NCLASS; i++) {
        float e = logits[i] - golden_logits[i];
        if (e < 0) e = -e;
        if (e > maxerr) maxerr = e;
        xil_printf("%s\t", KWS_CLASSES[i]); pf(logits[i]); xil_printf("\t"); pf(golden_logits[i]);
        xil_printf("\t"); pf(probs[i]); xil_printf("\r\n");
    }
    xil_printf("pred = %s\r\n", KWS_CLASSES[k]);
    xil_printf("erreur max |C - Keras| = "); pf(maxerr); xil_printf("  (attendu < 1e-4)\r\n");
    xil_printf("temps inference = %d us\r\n", (int)TIME_US(t0, t1));
    return 0;
}
