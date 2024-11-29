#!/bin/bash

# Verificar si existe la red 'hbase'
if ! docker network ls | grep -qw "hbase"; then
  echo "Creando la red 'hbase'..."
  docker network create hbase
else
  echo "La red 'hbase' ya existe."
fi

# Ejecutar el script de creación de directorios
if [ -f "./create_directories.sh" ]; then
  echo "Ejecutando create_directories.sh..."
  sudo ./create_directories.sh
else
  echo "El script create_directories.sh no se encontró."
  exit 1
fi

# Ejecutar docker-compose
echo "Iniciando docker-compose..."
docker-compose up -d --build
