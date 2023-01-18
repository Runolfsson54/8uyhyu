#!/bin/sh
if [ ! -f UUID ]; then
  UUID="4be77d59-b9f6-4189-8da0-e1da581fd6c2"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

