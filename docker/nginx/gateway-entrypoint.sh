#!/bin/sh
set -eu

if [ -n "${DOMAIN:-}" ] && [ -f "/etc/letsencrypt/live/${DOMAIN}/fullchain.pem" ]; then
    sed "s/\${DOMAIN}/${DOMAIN}/g" /etc/nginx/templates/gateway-ssl.conf.template > /etc/nginx/conf.d/ssl.conf
fi
