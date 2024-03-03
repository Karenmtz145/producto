1. Crea un script con el documento Accidentes_ags_2021.csv para que sume los datos de OTROVEHIC
Solo se tiene que mostrar el número:

#!/bin/bash
suma=$(awk -F ',' '{sum+=$21} END{print sum}' Accidentes_ags_2021.csv) #Error era la columna 25 no la 21
echo "LA SUMA DE 'VEHICULO' ES: $suma"
__________________________________________________________________________________________________________

2. Crea un script con el documento Accidentes_ags_2021.csv para que muestre los datos ID y FERROCARRI cuando sean en constitucion
El formato en que se tiene que mostrar es en columnas

Ejemplo

Pagina                        Estatus
www.google.com        OK
plataforma-utslp.net   OK
sito.utslp.edu.mx        OK
www.mozilla.org         OK
git-scm.com                OK
omar.                          FAIL


R=

#!/bin/bash
archivo="Accidentes_ags_2021.csv"

echo "ID,           FERROCARRI"
echo "------------------------"
grep -i "CONSTITUCION" "$archivo" | awk -F ',' '{print $1" "$22}' | column -s', ' -t



