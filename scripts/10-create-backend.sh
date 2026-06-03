#!/bin/ash
COMLINK_PORT=${COMLINK_PORT:-"3000"}
COMLINK_SERVICE_TEMPLATE=${COMLINK_SERVICE:-"swgoh-client"}
NUM_CLIENTS=${NUM_CLIENTS:-1}

MAX_CLIENTS=$((NUM_CLIENTS + 1))
echo "upstream backend {" > /etc/nginx/conf.d/upstream_backend.conf
for i in $(seq $NUM_CLIENTS); do
echo " adding $COMLINK_SERVICE_TEMPLATE-$i:$COMLINK_PORT to backend..."
echo "    server $COMLINK_SERVICE_TEMPLATE-$i:$COMLINK_PORT;" >> /etc/nginx/conf.d/upstream_backend.conf
done
echo "}" >> /etc/nginx/conf.d/upstream_backend.conf
