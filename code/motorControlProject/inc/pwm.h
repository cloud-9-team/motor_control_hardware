#ifndef __PWM_H_
#define __PWM_H_


#ifdef __cplusplus
extern "C" {
#endif

#define LED_RGB_R	(1 << 0)
#define LED_RGB_G	(1 << 1)
#define LED_RGB_B	(1 << 2)
#define LED_RGB		(LED_RGB_R | LED_RGB_G | LED_RGB_B)
#define LED_1		(1 << 3)
#define LED_2		(1 << 4)
#define LED_3		(1 << 5)
#define LEDS		(LED_RGB | LED_1 | LED_2 | LED_3)

#define TEC_1		(1<<0)
#define TEC_2		(1<<1)
#define TEC_3		(1<<2)
#define TEC_4		(1<<3)

#define SCT_PWM				LPC_SCT
#define SCT_PWM_PIN_1A		13		/* COUT13 controls 1A pin in L293D -> T_COL1 (P7_4) */
#define SCT_PWM_PIN_2A		3		/* COUT3  controls 2A pin in L293D -> T_FIL3 (P4_3) */
#define SCT_PWM_PIN_3A		0		/* COUT0  controls 3A pin in L293D -> T_FIL2 (P4_2) */
#define SCT_PWM_PIN_4A		10		/* COUT10 controls 4A pin in L293D -> T_COL0 (P1_5) */
#define SCT_PWM_CHANNEL_1A	1		/* Index of 1A PWM */
#define SCT_PWM_CHANNEL_2A	2		/* Index of 2A PWM */
#define SCT_PWM_CHANNEL_3A	3		/* Index of 3A PWM */
#define SCT_PWM_CHANNEL_4A	4		/* Index of 4A PWM */
#define SCT_PWM_RATE		10000	/* PWM frequency 10 KHz */
#define MIN_DUTY_CYCLE		40

#include "ciaaPOSIX_stdio.h"  /* <= device handler header */
#include "ciaaPOSIX_string.h"
#include "ciaak.h"            /* <= ciaa kernel header */
#include "ciaaDriverPwm.h"
#include "ciaaDriverPwm_Internal.h"

typedef enum {ADELANTE,ATRAS} Direction;

void ciaaPWM_init(void);
uint32_t getFileDescriptor(uint8_t fd_number);

#ifdef __cplusplus
}
#endif

#endif /* __PWM_H_ */
