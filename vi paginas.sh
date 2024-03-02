#!/bin/bash

# Lista de URLs a verificar
urls=(www.ejemplo.com
www.paginaweb.com/ejemplo
blog.ejemplo.org/seccion/articulo
www.tiendavirtual.com/producto-1
www.noticias123.net/ultimas-noticias
www.ejemplo.com/pagina1
www.ejemplo.org/categoria/subcategoria
www.sitioweb.net/seccion1/seccion2
www.ejemplo.com/landing-page
www.portfolioartistico.com/autor/obras

)

# Función para imprimir en verde
print_ok() {
    echo -e "\e[32mOK\e[0m"
}

# Función para imprimir en rojo
print_fail() {
    echo -e "\e[31mFail\e[0m"
}

echo "Página Web               | OK  | Fail"
echo "-------------------------+-----+-----"

# Recorre la lista de URLs y realiza solicitudes CURL
for url in "${urls[@]}"; do
    if curl -s --head "$url" | head -n 1 | grep "HTTP/1.[01] [23].." > /dev/null; then
        echo -n "$url | $(print_ok)  |"
    else
        echo -n "$url |      | $(print_fail)"
    fi
    echo ""
done