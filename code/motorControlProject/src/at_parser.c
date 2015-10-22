/*==================[inclusions]=============================================*/

#include "at_parser.h"

/*==================[macros and definitions]=================================*/

/*==================[internal data declaration]==============================*/

/*==================[internal functions declaration]=========================*/

/*==================[internal data definition]===============================*/

char bufferIPD[IPD_BUFFER_LENGTH];
IPD_Command lastIPD = {0, IPD_BUFFER_LENGTH, 0, bufferIPD};
uint8_t lastClientConnected;
uint8_t lastClientDisconnected;

/*==================[external data definition]===============================*/

/*==================[internal functions definition]==========================*/

/*==================[external functions definition]==========================*/


Status estado = S0;
uint16_t msgPos = 0;
uint16_t bufferIPD_writePos;

MatchStatus tryMatchIPD(char c){
    MatchStatus ret = NOT_MATCHES;

    switch(estado){
        case S0: /* Leer caracteres que comienzan en el mensaje */
            if (c == "+IPD,"[msgPos]){
                msgPos++;
                ret = INCOMPLETE;
                if ("+IPD,"[msgPos] == '\0'){
                    estado = S1; /* TODO Si CIPMUX es 0, saltar a S3 */
                }
            }
            break;
        case S1: /* Matcheo de ID de conexión, de 0 a 4 */
            if (c >= '0' && c <= '4'){
                lastIPD.connectionID = c - '0';
                estado = S2;
                ret = INCOMPLETE;
            }
            break;
        case S2: /* Matcheo de ',' que sucede al ID de conexión */
            if (c == ','){
                estado = S3;
                ret = INCOMPLETE;
                lastIPD.payloadLength = 0;
            }
            break;
        case S3: /* Matcheo de longitud del mensaje (payload) */
            if (c == ':' && lastIPD.payloadLength > 0){
                estado = S4;
                ret = INCOMPLETE;
            }
            else if (c >= '0' && c <= '9'){
                lastIPD.payloadLength = (lastIPD.payloadLength * 10) + (c - '0');
                ret = INCOMPLETE;
            }
            break;
        case S4: /* Lectura del payload */
            if (bufferIPD_writePos < lastIPD.bufferLength){
                lastIPD.buffer[bufferIPD_writePos++] = c;
                if (lastIPD.payloadLength == bufferIPD_writePos){
                    ret = COMPLETE;
                }
                else{
                    ret = INCOMPLETE;
                }
            }
            break;
        default:
        	break;
    }

    if (ret == NOT_MATCHES || ret == COMPLETE){
        estado = S0;
        msgPos = 0;
        bufferIPD_writePos = 0;
    }

    return ret;
}

Status estado1 = S0;
uint16_t msg1Pos = 0;
uint8_t clientTemp1 = 255;

MatchStatus tryMatchConnectionOpen(char c){
    MatchStatus ret = NOT_MATCHES;

    switch(estado1){
        case S0: /* Matcheo de ID de conexión, de 0 a 4 */
            if (c >= '0' && c <= '4'){
                clientTemp1 = c - '0';
                estado1 = S1;
                ret = INCOMPLETE;
            }
            break;
        case S1: /* Matcheo de la cadena ",CONNECT" que debe sucederse */
            if (c == ",CONNECT"[msg1Pos]){
                msg1Pos++;
                if (",CONNECT"[msg1Pos] == '\0'){
                    lastClientConnected = clientTemp1;
                    ret = COMPLETE;
                }
                else{
                    ret = INCOMPLETE;
                }
            }
            break;
        default:
        	break;
    }

    if (ret == NOT_MATCHES || ret == COMPLETE){
        estado1 = S0;
        msg1Pos = 0;
        clientTemp1 = 255;
    }

    return ret;
}


Status estado2 = S0;
uint16_t msg2Pos = 0;
uint8_t clientTemp2 = 255;

MatchStatus tryMatchConnectionClosed(char c){
    MatchStatus ret = NOT_MATCHES;

    switch(estado2){
        case S0: /* Matcheo de ID de conexión, de 0 a 4 */
            if (c >= '0' && c <= '4'){
                clientTemp2 = c - '0';
                estado2 = S1;
                ret = INCOMPLETE;
            }
            break;
        case S1: /* Matcheo de la cadena ",CONNECT" que debe sucederse */
            if (c == ",CLOSED"[msg2Pos]){
                msg2Pos++;
                if (",CLOSED"[msg2Pos] == '\0'){
                    lastClientDisconnected = clientTemp2;
                    ret = COMPLETE;
                }
                else{
                    ret = INCOMPLETE;
                }
            }
            break;
        default:
        	break;
    }

    if (ret == NOT_MATCHES || ret == COMPLETE){
        estado2 = S0;
        msg2Pos = 0;
        clientTemp2 = 255;
    }

    return ret;
}

IPD_Command * getLastIPD(void){
	return &lastIPD;
}
