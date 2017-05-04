#!/bin/bash
# -*- ENCODING: ISO8859-15 -*-
echo "***Descargando el repositorio"
git clone https://github.com/maincenter/Lista-Canales-DTV.git
cd Lista-Canales-DTV/
echo "***Copiando los ficheros al directorio de TVHeadend </usr/share/tvheadend/data/>"
cp -vr dvb-scan /usr/share/tvheadend/data/
cd ..
echo "***Eliminando los ficheros temporales descargados"
rm -rfv Lista-Canales-DTV
clear
echo "***Instalación completada."
echo "***Si todo a ido bien, podrá acceder a las listas automáticas de pre-sintonías de la TDT desde TVHeadend"
echo "***Si se encuentra en una ubicación que implica canales de dos zonas, primero rastree con una y luego, repita el proceso con la siguiente zona, de tal manera que en la sección de networks le quedarán las dos zonas rastreadas."
echo "***Puede rastrear tantas zonas como desee."
