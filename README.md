# Control de motores por comunicación Wi-Fi

Este proyecto forma parte de la cátedra de **Taller de Proyecto 1**, perteneciente al segundo semestre de la carrera de Ingeniería en Computación, en la Facultad de Ingeniería de la Universidad de La Plata. 

Nuestra motivación principal es lograr el **control de motores utilizando un tipo de comunicación inalámbrica**. La elección de dicha comunicación debe ser tal que se logre una abstracción del dispositivo desde el cual se envien los comandos de control. 
A partir de estas restricciones elegimos realizar el control de motores de corriente continua mediante el uso del protocolo de comunicación inalámbrica IEEE 802.11, comúnmente conocido cómo Wi-Fi. Al poder abstraernos del dispositivo que envía los comandos, se podrá hacer uso de **smartphones**, **servidores web**, o cualquier otro tipo de dispositivo que cuente con un protocolo de comunicación Wi-Fi integrado.

### Descripción 
En este proyecto se buscará desarrollar específicamente los siguientes puntos:
 - Control de dos motores de corriente continua a través de señales PWM utilizando un H-bridge IC L293D.
 - Comunicación mediante protocolo Wi-Fi con módulo independiente ESP8266.
 - Comunicación serie entre EDU-CIAA y módulo Wi-Fi.
 - Aplicación Android para comunicación con el módulo.

Estos dos últimos ítems se encuentran alojados en el siguiente repositorio https://github.com/cloud-9-team/motor_control_firmware_apps

### Esquema de funcionamiento
El funcionamiento del vehículo será controlado por **instrucciones AT** enviadas inalámbricamente por Wi-Fi desde un smartphone, corriendo un sistema operativo Android, al módulo ESP8266. El módulo ESP8266 enviará las instrucciones por **comunicación serie** a la EDU CIAA-NXP. La EDU CIAA procesará los comandos y, en base a eso, modificará los valores correspondientes de los cuatro outputs de SCT (módulo State Controlled Timer). Las señales serán enviadas a los inputs del H-bridge IC. El H-bridge, en base a la tensión media que reciba por sus entradas, permitirá a los dos motores girar en determinado sentido y con una cierta velocidad. Los sentidos y velocidades de los motores determinarán la dirección de movimiento del vehículo.

### Herramientas de desarrollo
Para el diseño del hardware se utiliza la herramienta de diseño asistido por computadora **Kicad**, y para el desarrollo del software el plugin de la CIAA para el entorno **Eclipse**.

### Integrantes del grupo

 - Julián Ailán
 - Federico Bouche
 - Lucas Hourquebie
 - Emiliano Liotta

### Descarga de los documentos
Debes tener **Git** instalado en tu máquina para poder gestionar las descargas. La instalación de Git depende del sistema operativo que uses
 - Distribuciones de Linux: 
    - En el caso de utilizar Fedora podes utilizar **yum**:
    ```sh
    $ sudo yum install git
    ```
    - En el caso de utilizar distribuciones basadas en Debian tenés que usar **apt-get**:
    ```sh
    $ sudo apt-get install git
    ```
 - Windows: accedé a http://git-scm.com/download/win y la instalación comenzará de forma automática.
 - MacOS: del mismo modo que en Windows, accedé a http://git-scm.com/download/mac y el instalador comenzará a descargarse.

Crear o posicionarse en la carpeta donde se desea descargar el contenido e inicializarla:
```sh
$ mkdir <nombre_de_la_carpeta>
$ cd <nombre_de_la_carpeta>
$ git init
```
Luego se debe relacionar el repositorio con la carpeta donde previamente te situaste:
```sh
$ git remote add origin https://github.com/cloud-9-team/motor_control_hardware.git
```
Por último, los contenidos se descargarán a la carpeta corriendo el siguiente comando:
```sh
$ git pull origin master
```
### Version
1.1
