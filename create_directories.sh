#!/bin/bash

create_directory() {
    local dir=$1
    if [ -d "$dir" ]; then
        echo "El directorio '$dir' ya existe."
    else
        echo "Creando el directorio '$dir'..."
        sudo mkdir -p "$dir"
    fi
}

create_directory "data/nodemanager"
create_directory "data/namenode"
create_directory "data/datanode/datanode1"
create_directory "data/datanode/datanode2"
create_directory "data/datanode/datanode3"
create_directory "data/datanode/datanode4"
create_directory "data/datanode/datanode5"
create_directory "data/historyserver"
