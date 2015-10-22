
#ifndef PROJECTS_ESP8266_INC_AT_PARSER_H_
#define PROJECTS_ESP8266_INC_AT_PARSER_H_

/*==================[inclusions]=============================================*/

#include "ciaaPOSIX_stdio.h"

/*==================[macros]=================================================*/

#define IPD_BUFFER_LENGTH 256

/*==================[typedef]================================================*/

typedef enum {S0, S1, S2, S3, S4, S5} Status;

typedef enum {INCOMPLETE, NOT_MATCHES, COMPLETE} MatchStatus;

typedef struct {
    uint8_t connectionID;
    uint16_t bufferLength;
    uint16_t payloadLength;
    uint8_t * buffer;
} IPD_Command;

/*==================[external data declaration]==============================*/

/*==================[external functions declaration]=========================*/

extern MatchStatus tryMatchIPD(char c);
extern MatchStatus tryMatchConnectionOpen(char c);
extern MatchStatus tryMatchConnectionClosed(char c);

extern IPD_Command * getLastIPD(void);

#endif /* PROJECTS_ESP8266_INC_AT_PARSER_H_ */
