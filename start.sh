#/bin/sh

HOST_IP=$(ifconfig en0 | awk '$1 == "inet" {print $2}')
CWD=$(pwd)
docker run -it -p 8888:8888  \
-e HOST_IP="$HOST_IP" \
-v $(pwd)/notebooks:/home/jovyan/work \
-P all-spark-notebook
