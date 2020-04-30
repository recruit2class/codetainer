#!/usr/bin/env bash
set -e

echo ---
echo -n "Cycling app codetainer..."
echo "Stopping codetainer-server"
id=$(docker ps -af "name=codetainer-server" --format="{{.ID}}")
echo $id
if [[ ! -z $id ]]
then
  docker rm -f $id
fi
docker run -d --name codetainer-server --restart=always --network host codetainer-server:latest
echo " done"
echo ---
echo

echo Finished
