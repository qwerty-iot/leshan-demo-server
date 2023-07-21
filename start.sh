#!/bin/sh

wget https://ci.eclipse.org/leshan/job/leshan/lastSuccessfulBuild/artifact/leshan-server-demo.jar
wget https://ci.eclipse.org/leshan/job/leshan/lastSuccessfulBuild/artifact/leshan-bsserver-demo.jar

SERVICE=server
if [ -n "$1" ] && [ "$1" != "--" ]; then
    SERVICE="$1"
    shift
fi

if [ "$1" = "--" ]; then
    shift
fi

set -xe

case $SERVICE in
  server)
    java -jar ./leshan-server-demo.jar "$@" ;;
  bootstrap|bsserver)
    java -jar ./leshan-bsserver-demo.jar "$@" ;;
  *)
    echo "Usage: <server|bootstrap>"
    exit 1
esac