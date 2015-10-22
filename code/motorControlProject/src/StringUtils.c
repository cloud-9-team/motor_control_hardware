#include "StringUtils.h"

static unsigned char readInteger2(unsigned char * str, unsigned char * cantLeidoPtr, unsigned char * valorPtr, unsigned char readLength);


/*---------------------------------------------------------------------------
 unsigned char readInteger(unsigned char * str,
						   unsigned char * cantLeidoPtr,
						   unsigned char * valorPtr)

 Lee un número entero de la cadena de caracteres str. Lee caracteres
 numéricos hasta que encuentre uno que no lo sea, y devuelve el entero que
 representan tales caracteres.

 Parámetros formales:
	str:			cadena de caracteres de donde se leerán los caracteres
					numéricos.
	cantLeidoPtr:	parámetro por referencia, permite devolver la cantidad de
					caracteres numéricos que han sido leídos de str. En caso
					de overflow se continúan leyendo números por lo que su
					valor será correcto.
	valorPtr:		parámetro por referencia, devuelve el valor representado
					por los caracteres numéricos leídos. Su valor no está
					definido si ocurrió overflow.

 Valor de retorno:
	Indica si la lectura se realizó adecuadamente si su valor es 1. En caso
	contrario, por ejemplo ante la ocurrencia de overflow, esta función
	retornará 0. También retornará cero si no se leyó ningún número.

 Ejemplos:
	str = "123ASD" 		=> cantLeido = 3, valor = 123, retorno = 1.
	str = "12345ASD" 	=> cantLeido = 5, valor = ???, retorno = 0.
	str = "ASD"			=> cantLeido = 0, valor = ???, retorno = 0.
-----------------------------------------------------------------------------*/
unsigned char readInteger(unsigned char * str,
						  unsigned char * cantLeidoPtr,
						  unsigned char * valorPtr){
	unsigned char c;
	unsigned char huboCarry = 0;
	unsigned char val = 0;
	unsigned char cant = 0;

	while (isNumber(*str)){
		cant++;

		if (!huboCarry){
			if (val > (UCHAR_MAX / 10))
				huboCarry = 1;
			else{
				val *= 10;

				c = *str - '0';
				if ((UCHAR_MAX - val) < c)
					huboCarry = 1;
				else
					val += c;
			}
		}

		str++;
	}

	*cantLeidoPtr = cant;
	*valorPtr = val;
	return (!huboCarry && cant > 0);
}

unsigned char isNumber(unsigned char c){
	return (c >= '0' &&  c <= '9');
}

/*---------------------------------------------------------------------------
 unsigned char readFixedPoint(unsigned char * str,
							  unsigned char exp,
							  unsigned char * cantLeidoPtr,
							  unsigned short * valorPtr)

 Lee un número en punto fijo de la cadena de caracteres str. Lee caracteres
 numéricos hasta que encuentre uno que no lo sea, y devuelve el entero que
 representan tales caracteres, o si encuentra un carácter separador de parte
 entera y decimal, continuará leyendo caracteres numéricos que conformarán la
 parte decimal, hasta encontrar un carácter distinto de un número.

 Parámetros formales:
	str:			cadena de caracteres de donde se leerán los caracteres
					numéricos.
    exp:            exponente del factor de escala 10^(exp) por el cual se
                    multiplicará el número obtenido. Por ejemplo si exp = 2,
                    entonces el factor será 100, y si la cadena es "4.32" se
                    obtendrá como resultado 432.
	cantLeidoPtr:	parámetro por referencia, permite devolver la cantidad de
					caracteres numéricos que han sido leídos de str. En caso
					de overflow se continúan leyendo números por lo que su
					valor será correcto.
					La cantidad leída de caracteres estará conformada por la
					cantidad leida para la parte entera, y si hay parte
					decimal, la cantidad leída para la parte decimal más 1,
					correspondiente al carácter separador.
	valorPtr:	    parámetro por referencia, devuelve el valor representado
					por los caracteres numéricos leídos de la parte entera y
					de la parte decimal.
					Su valor no está definido si ocurrió overflow.

 Valor de retorno:
	Indica si la lectura se realizó adecuadamente si su valor es 1. En caso
	contrario, por ejemplo ante la ocurrencia de overflow, esta función
	retornará 0. También retornará cero si no se leyó ningún número.
	Principalmente, será 0 si no fue posible, al obtener las partes entera y
	decimal, representarlas de manera adecuada individualmente.
	No habrá error si el número se encuentra entre 000.000 y 255.255.

 Ejemplos:
	str = "123ASD" 		=> cantLeido = 3, factor = 100, 12300, 	  retorno = 1.
	str = "12345ASD" 	=> cantLeido = 5, factor = 100, 12300, 	  retorno = 0.
	str = "123.05A"		=> cantLeido = 6, factor = 100, 12305,    retorno = 1.
	str = "12,8"		=> cantLeido = 4, factor = 10,  128, 	  retorno = 1.
	str = "0.599"		=> cantLeido = 5, factor = 1000,59, 	  retorno = 0.
	str = "0.199"		=> cantLeido = 5, factor = 1000,199, 	  retorno = 1.
	str = "12.12"		=> cantLeido = 5, factor = 100, 1212,     retorno = 1.
	str = ".77"			=> cantLeido = 3, factor = 10,  7,        retorno = 1.
-----------------------------------------------------------------------------*/
unsigned char readFixedPoint(unsigned char * str,
							 unsigned char exp,
							 unsigned char * cantLeidoPtr,
							 unsigned short * valorPtr){
	unsigned char valorTemp = 0;
	unsigned char validoEntero = 1;
	unsigned char validoDecimal = 1;
	unsigned char cantEntero = 0;
	unsigned char cantDecimal = 0;
	unsigned char cantTrailingCeros = 0;
	unsigned char i;
    unsigned short decimalScaled = 0;

	validoEntero = readInteger(str, &cantEntero, &valorTemp);
	*valorPtr = valorTemp;
	for (i = 0; i < exp; i++){
        if (*valorPtr > (USHORT_MAX / 10))
            validoEntero = 0;
        else
            *valorPtr *= 10;
	}

	if ((str[cantEntero] == '.' || str[cantEntero] == ',') && exp > 0){ // Si tiene parte decimal
		// Se acepta como caracteres siguientes al entero, en caso de que haya parte decimal: '.', ','

		validoDecimal = readInteger(&(str[cantEntero + 1]), &cantDecimal, &valorTemp);

		while (str[cantEntero + cantDecimal - cantTrailingCeros] == '0') cantTrailingCeros++;

		if (cantTrailingCeros > 0)
            validoDecimal = readInteger2(&(str[cantEntero + 1]), &i, &valorTemp, cantDecimal - cantTrailingCeros);

		decimalScaled = valorTemp;

		if (exp > cantDecimal - cantTrailingCeros){
			for (i = 0; i < exp - (cantDecimal - cantTrailingCeros); i++){
                if (decimalScaled > (USHORT_MAX / 10))
                    validoDecimal = 0;
                else
                    decimalScaled *= 10;
            }
		}
		else{
			for (i = 0; i < cantDecimal - cantTrailingCeros - exp; i++)
				decimalScaled /= 10;
		}

		if ((USHORT_MAX - *valorPtr) < decimalScaled)
            validoDecimal = 0;
        else
            *valorPtr += decimalScaled;

		if (cantEntero == 0) // Aceptar formato ".5"
			validoEntero = 1;

		cantDecimal++; // Sumo un carácter más leído, por el separador de parte entera/decimal.
	}

	*cantLeidoPtr = cantDecimal + cantEntero;
	return (validoEntero && validoDecimal);
}

static unsigned char readInteger2(unsigned char * str,
								  unsigned char * cantLeidoPtr,
								  unsigned char * valorPtr,
								  unsigned char readLength){
	unsigned char c;
	unsigned char huboCarry = 0;
	unsigned char val = 0;
	unsigned char cant = 0;

	while (isNumber(*str) && cant < readLength){
		cant++;

		if (!huboCarry){
			if (val > (UCHAR_MAX / 10))
				huboCarry = 1;
			else{
				val *= 10;

				c = *str - '0';
				if ((UCHAR_MAX - val) < c)
					huboCarry = 1;
				else
					val += c;
			}
		}

		str++;
	}

	*cantLeidoPtr = cant;
	*valorPtr = val;
	return (!huboCarry && cant > 0);
}


static unsigned char digitCount(unsigned int number){
	unsigned char count = 0;

	do {
		count++;
		number /= 10;
	} while (number != 0);

	return count;
}


/*---------------------------------------------------------------------------
 unsigned char * fixedPointToString(unsigned short valor, 
								    unsigned char exp,
								    unsigned char minCantDigitos,
								    unsigned char * str)

 Convierte el número en punto fijo pasado por argumentos en una cadena de
 caracteres representativa. Esta cadena se escribe en un buffer.

 Parámetros formales:
	valor:			número en punto fijo a convertir a string.
	exp:			determina la posición del separador de parte entera y
					decimal. Equivale a dividir valor por 10^(exp).
	minCantDigitos: mínima cantidad de dígitos a devolver. Si no se alcanza
					esta cantidad, se agregan ceros a la izquierda.
	str:			cadena de caracteres de donde se guardará la cadena
					resultante. Debe tener espacio suficiente para todos los
					números, un carácter separador de parte entera/decimal y
					el carácter nulo.

 Valor de retorno:
	Posición en el buffer luego de escribir la cadena. Apunta al carácter
	nulo.
-----------------------------------------------------------------------------*/
unsigned char * fixedPointToString(unsigned short valor, 
								   unsigned char exp,
								   unsigned char minCantDigitos,
								   unsigned char * str){
    unsigned char * p;

    p = ushortToString(valor, minCantDigitos, str);
	p++;
    str = p;
    for (minCantDigitos = 0; minCantDigitos <= exp; minCantDigitos++) *(--str + 1) = *str;
    *str = '.';
    return p;
}

unsigned char * ushortToString(unsigned short valor, unsigned char minCantDigitos, unsigned char * str){
    unsigned char cantDigitos = 1;
    char i;

    cantDigitos = digitCount(valor);

    if (minCantDigitos > cantDigitos)
        cantDigitos = minCantDigitos;

    for (i = cantDigitos; i > 0; i--){
        str[i-1] = '0' + valor % 10;
        valor /= 10;
    }

    str += cantDigitos;
    *str = '\0';

    return str;
}


unsigned char * uintToString(unsigned int valor, unsigned char minCantDigitos, unsigned char * str){
    unsigned char cantDigitos = 1;
    char i;

    cantDigitos = digitCount(valor);

    if (minCantDigitos > cantDigitos)
        cantDigitos = minCantDigitos;

    for (i = cantDigitos; i > 0; i--){
        str[i-1] = '0' + valor % 10;
        valor /= 10;
    }

    str += cantDigitos;
    *str = '\0';

    return str;
}


unsigned char strContainsChar(const unsigned char * str, unsigned char c){
	while (*str != '\0'){
		if (*str == c)
			return 1;
		str++;
	}
	return 0;
}
