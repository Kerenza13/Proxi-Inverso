#!/bin/sh
set -e

# Directorio de los certificados
CERT_DIR=/etc/nginx/certs

# Si no existe el certificado, lo generamos
if [ ! -f "$CERT_DIR/selfsigned.crt" ]; then
  echo "Generando certificado autofirmado..."
  openssl req -x509 -nodes -days 365 \
    -subj "/C=ES/ST=Granada/L=Granada/O=IESHLANZ/OU=DAWT/CN=Carlos Morillas Delgado/emailAddress=tuemail@gmail.com" \
    -newkey rsa:2048 \
    -keyout "$CERT_DIR/selfsigned.key" \
    -out "$CERT_DIR/selfsigned.crt"
fi

# Arrancamos Nginx en primer plano
exec nginx -g "daemon off;"
