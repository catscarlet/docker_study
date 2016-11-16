#!/bin/bash
ID=$1;

PID=$(docker inspect --format "{{ .State.Pid }}" $ID )
if [ $PID = 0 ]; then
    echo "PID is 0, exit."
    exit 1
fi
echo "Going into:"
docker ps -f id=$ID
echo "PID:$PID"
nsenter --target $PID --mount --uts --ipc --net --pid
