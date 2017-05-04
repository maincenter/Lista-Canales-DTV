CANALES DVB-T (TDT) territorio español para TVHEadend.
======================================================
* INFO: -Esta documentación se basa en la distribución Debian “wheezy” 7.x que tiene soporte hasta 2018.

+ En mi caso tengo mi TVHeadend instalado en un Servidor con Open Media Vault, incluyo estos datos para que lo tengas en cuenta, con ello no quiero decir que no funcione en versiones superiores de Debian.

+ Para agregar estos ficheros de presintonías actualizados, podemos realizarlo de varias formas:
1 Copiando el o los ficheros que nos interesen de forma manual en el directorio de TVHeadend.
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
 -MoviStar_A_la_carta_HD.m3u (Contiene los canales en HD que se contratan por separado.)
 -MoviStar_A_la_carta_SD.m3u (Contiene los canales en SD que se contratan por separado.)
 -MoviStar_Bar_HD.m3u (Contiene los canales en HD asignados para los establecimientos públicos, mas concreta mente para los Bares.)
 -MoviStar_Bar_SD.m3u (Contiene los canales en SD asignados para los establecimientos públicos, mas concreta mente para los Bares.)
 -MoviStar_Formula_1_HD.m3u (Contiene los canales en HD de la Formula 1. "Multi Cámara".)
 -MoviStar_Formula_1_SD.m3u (Contiene los canales en SD de la Formula 1. "Multi Cámara".)
 -MoviStar_HD.m3u (Contienen todos los canales disponibles en HD de MoviStar+.)
 -MoviStar_SD.m3u (Contienen todos los canales disponibles en SD de MoviStar+.)
 -MoviStar_MotoGP_HD.m3u (Contiene los canales en HD de la MotoGP. "Multi Cámara".)
 -MoviStar_MotoGP_SD.m3u (Contiene los canales en SD de la MotoGP. "Multi Cámara".)

He creado estas listas con los siguientes valores para TVHeadend:
+ Los listados MoviStar_SD y MoviStar_HD contienen los canales en SD y HD, también se crean las etiquetas "TAGS" para TVHeadend como SD y HD con el fín de reproducir los SD desde fuera de la red local (desde fuera de casa) los HD podrán ser reproducidos desde nuestra red local sin problema tanto en la red cableada como en la red Wi-Fi siempre y cuando esta tenga soporte "N" 300MB.

+ Las listas de Formula 1 y MotoGP contienen los canales multi cámara, los he agrupado así para poder localizarlos de manera rápida por filtro, estas listas crean dos "TAGS" llamados Formula 1 HD y Formula 1, MotoGP HD y MotoGP, con el mismo fin que en el punto anterior pero sumándole la opción de filtrar que son los dedicados a la Formula 1 y a la MotoGP.

+ Las listas de A la carga SD y A la carga HD ocurre igual, crea los "TAGS" A la carta y A la carta HD para separarlos y localizarlos antes.

+ Las listas de MoviStar Bar en HD y en SD pasa igual que en las anteriores ocasiones, crea dos "TAGS" Bar y Bar HD, aun que el objetivo es el mismo que en las anteriores ocasiones, estas listas solo están orientadas para Bares y por tanto, es absurdo añadirlas a nuestro TVHeadend, estos canales ya los tendremos contratados en MoviStar_SD.m3u y en MoviStar_HD.m3u.

+ Si añadimos todas las listas, solo añadirá los canales que tengamos contratados y los TAGS que se nos quedarán asignados serán:
 SD
 HD
 A la carta
 A la carta HD
 Bar
 Bar HD
 Formula 1
 Formula 1 HD
 MotoGP
 MotoGP HD
 Si te aparece algún otro puedes eliminarlos sin problemas, los canales no se verán afectados.

INSTALACIÓN.
------------

+ Para agregar estas listas tendremos que hacer lo siguiente:
En CCONFIGURATION -> DVB-Inputs -> Networks -> Add, en la ventana que se nos abre, seleccionamos Type: IPTV Automatic Networks, en la sección URL, añadiremos lo siguiente: "remplaza las XXX por el nombre del archivo que desees agregar, este paso lo tendrás que hacer tantas veces como listas quieras añadir."
https://raw.githubusercontent.com/maincenter/Lista-Canales-DTV/master/iptv/MoviStar/MoviStar_XXX.m3u
El resto de opciones te aconsejamos que sigas este manual: http://www.luispa.com/archivos/4571
Este manual incluye distintas secciones, te aconsejo que sigas la guia solo para las listas m3u y para el EPG, los iconos de los canales los tienes en este repositorio en el que estoy trabajando y un manual de como añadirlo:
https://github.com/maincenter/Logotipos-TV

+ Estos canales los actualizaré tan pronto como pueda y en teoría cada hora TVHeadend comprobará dicha lista, desconozco si realiza una resintonización, pero si no es así, te aconsejo que visites este sección para saber cuando fué la última actualización, la fecha aparece en los ficheros, en la parte derecha de la lista, si la fecha a cambiado, aconsejo que resintoniceis manual mente pulsando en el botón Force Scan marcando previamente la lista que deseémos actualizar.

* INFO: Este contenido está dirijido para los usuarios de TVHeadend, versión 4.1 y Superiores. (no probado en versiones anteriores, por lo que se desconoce si funciona o no.)