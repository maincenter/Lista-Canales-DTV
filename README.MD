CANALES DVB-T (TDT) territorio español para TVHeadend.
======================================================
* INFO: -Esta documentación se basa en la distribución Debian "Stretch" 9.x que tiene soporte hasta 2022 en su versión LTS.

+ Para agregar estos ficheros de presintonías actualizados, podemos realizarlo de varias formas:

1 Copiando el o los ficheros que nos interesen de forma manual en el directorio de TVHeadend. (Solo canales DVB-T,S y C.)

2 Reiniciamos TVHeaden y ya podremos acceder a ellos.

O bien, de la forma "automática" para lo cual, he creado el fichero tdt.sh que tendremos que descargar a nuestro sistema donde queramos instalarlo.

1 Descargamos el fichero tdt.sh o bien, creamos uno propio en nuestro sistema y copiamos el contenido del mismo.

2 Le damos permisos de ejecución con el comando; "chmod +x tdt.sh" (sin las "") otra opción es ejecutar como root el comando; "sh tdt.sh" (recuerde, no copiar las "") Este mini "script" tiene simplemente una orden de ejecución paso a paso, por lo que si entiendes algo de linux verás que es un fichero que se le llama SCRIPT pero que es muy simple y sencillo.

+ Tras hacer esto, el "Script" se encarga de:

1 Descargar los ficheros del repositorio al completo. "git clone https://github.com/maincenter/Lista-Canales-DTV.git"

2 Acceder al directorio descargado. "cd Lista-Canales-DTV/"

3 Eliminar todos los ficheros españoles que tuviesemos antes. "rm -rfv /usr/share/tvheadend/data/dvb-scan/dvb-t/es-*" 

4 Copia los ficheros descargados al directorio de TVHeadend. "cp -vr dvb-scan /usr/share/tvheadend/data/"

5 Elimina el directorio descargad. "rm -rfv Lista-Canales-DTV"

6 Reinicia el servicio de TVHeadend. "service tvheadend restart"


IPTV de MoviStar+ España.
=========================

+ En esta sección se han creado los ficheros de MoviStar+ de la siguiente forma:

 -Alacarta_HD.m3u y Alacarta_SD.m3u (Contiene los canales del paquete Movistar+ A la carta, en SD y HD que se contratan por separado.)

 -Bar_HD.m3u y Bar_SD.m3u (Contiene los canales del paquete Movistar+ para locales públicos, en SD y HD.)

 -Motor_HD.m3u y Motor_SD.m3u (Contiene los canales del paquete Motor en SD y HD que en la actualidad solo contiene la Formula 1.

  -Familiar_HD.m3u y Familiar_SD.m3u (Contienen todos los canales disponibles en SD y HD del paquete MoviStar+ Familiar.)

He creado estas listas con los siguientes valores para TVHeadend:

+ Las etiquetas SD y HD contienen los canales en Baja calidad y en Alta calidad, también se crean las etiquetas "TAGS" para TVHeadend como SD y HD con el fín de poder filtrar estos canales.

+ Todos los canales están agrupados en SD o HD pero a su vez, también se han creado las etiquetas relativas a Paquete de contratación, sea este Familiar, Motor, Futbol, Deportes, A la carta, etc...

**Los canales Multicanal no se han incluido.

+ Si añadimos todas las listas, solo se agregarán los canales que tengamos contratados.


INSTALACIÓN para IPTV MoviStar+.
--------------------------------

+ Para agregar estas listas tendremos que hacer lo siguiente:

En CCONFIGURATION -> DVB-Inputs -> Networks -> Add, en la ventana que se nos abre, seleccionamos Type: 

IPTV Automatic Networks, en la sección URL, añadiremos lo siguiente: "remplaza las XXX por el nombre del archivo que desees agregar, este paso lo tendrás que hacer tantas veces como listas quieras añadir."
https://raw.githubusercontent.com/maincenter/Lista-Canales-DTV/master/iptv/MoviStar/nombre_fichero.m3u

El resto de opciones te aconsejamos que sigas este manual: http://www.luispa.com/archivos/4571

Este manual incluye distintas secciones, te aconsejo que sigas la guia solo para las listas m3u y para el EPG, los iconos de los canales los puedes encontrar en este repositorio: https://github.com/maincenter/Logotipos-TV y un manual de como añadirlo, estos logos pueden no cargar correctamente ya que los nombres de los canales pueden haber cambiado y por consiguiente no cargar.

+ Estos canales los actualizaré tan pronto como pueda y en teoría cada hora TVHeadend comprobará dicha lista, desconozco si realiza una resintonización, pero si no es así, te aconsejo que visites este sección para saber cuando fué la última actualización, la fecha aparece en los ficheros, en la parte derecha de la lista, si la fecha a cambiado, aconsejo que resintoniceis manual mente pulsando en el botón Force Scan marcando previamente la lista que deseémos actualizar.

* INFO: Este contenido está dirijido para los usuarios de TVHeadend, versión 4.1 y 4.2. (no probado en versiones anteriores, por lo que se desconoce si funciona o no.)
