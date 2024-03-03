#!/bin/bash
suma=$(awk -F ',' '{sum+=$21} END{print sum}' Accidentes_ags_2021.csv)
echo "LA SUMA DE 'VEHICULO' ES: $suma"
 