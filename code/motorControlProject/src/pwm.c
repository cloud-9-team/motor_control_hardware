/* Copyright 2015, Emiliano Liotta
 * Copyright 2015, Federico Bouche
 * Copyright 2015, Julián Ailán
 * Copyright 2015, Lucas Hourquebie
 *
 * This file is part of CIAA Firmware.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * 3. Neither the name of the copyright holder nor the names of its
 *    contributors may be used to endorse or promote products derived from this
 *    software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 */


/*==================[inclusions]=============================================*/
#include "pwm.h"
#include "chip.h"
/*==================[macros and definitions]=================================*/

/*==================[internal data declaration]==============================*/

/*==================[internal functions declaration]=========================*/

/*==================[internal data definition]===============================*/
uint32_t fd_pwm0;
uint32_t fd_pwm1;
uint32_t fd_pwm2;
uint32_t fd_pwm3;

/*==================[external data definition]===============================*/

/*==================[internal functions definition]==========================*/
/** \brief PWM init
 *
 * Initializes all four SCT channels for motor control.
 */
void ciaaPWM_init(void)
{
	uint8_t min_duty_cycle = 40;

	/* Opening of PWM channels and initilization */
	fd_pwm0 = ciaaPOSIX_open("/dev/dio/pwm/0",SCT_PWM_PIN_1A);
	fd_pwm1 = ciaaPOSIX_open("/dev/dio/pwm/1",SCT_PWM_PIN_4A);
	fd_pwm2 = ciaaPOSIX_open("/dev/dio/pwm/2",SCT_PWM_PIN_2A);
	fd_pwm3 = ciaaPOSIX_open("/dev/dio/pwm/3",SCT_PWM_PIN_3A);

	ciaaPOSIX_write(fd_pwm0,&min_duty_cycle,1);
	ciaaPOSIX_write(fd_pwm1,&min_duty_cycle,1);
	ciaaPOSIX_write(fd_pwm2,&min_duty_cycle,1);
	ciaaPOSIX_write(fd_pwm3,&min_duty_cycle,1);
}

/** \brief PWM channel file descriptor
 *
 * Returns the pwm file descriptor according to the variable in the parameter list
 */

uint32_t getFileDescriptor(uint8_t fd_number){
	switch(fd_number){
	case 0:
		return fd_pwm0;
		break;
	case 1:
		return fd_pwm1;
		break;
	case 2:
		return fd_pwm2;
		break;
	case 3:
		return fd_pwm3;
		break;
	default:
		return -1;
	}
}

/*==================[external functions definition]==========================*/

/** @} doxygen end group definition */
/** @} doxygen end group definition */
/** @} doxygen end group definition */
/*==================[end of file]============================================*/

