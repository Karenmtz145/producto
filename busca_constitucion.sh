#!/bin/bash
archivo="Accidentes_ags_2021.csv"

echo "ID,           FERROCARRI"
echo "------------------------"
grep -i "CONSTITUCION" "$archivo" | awk -F ',' '{print $1" "$22}' | column -s', ' -t