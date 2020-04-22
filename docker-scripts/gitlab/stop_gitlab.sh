#!/bin/bash

echo "docker stop..."
docker stop gitlab
echo "docker rm..."
docker rm gitlab
echo "stop docker gitlab completed."
