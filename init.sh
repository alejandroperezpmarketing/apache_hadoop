#!/bin/bash

# Check if the 'hbase' network exists
if ! docker network ls | grep -q "hbase"; then
  echo "Creating 'hbase' network..."
  docker network create hbase
else
  echo "'hbase' network already exists."
fi

# Now, run docker-compose up
docker-compose up -d --build
