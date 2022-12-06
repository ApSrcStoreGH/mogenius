#!/bin/sh
if [ ! -f UUID ]; then
  UUID="ebeba0d1-54e1-46a8-a498-4fcfdbee6df8"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

