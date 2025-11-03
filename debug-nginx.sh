#!/bin/bash

echo "=== Nginx Configuration Test ==="
nginx -t

echo -e "\n=== Nginx Version ==="
nginx -v

echo -e "\n=== Checking Configuration Files ==="
ls -la /etc/nginx/conf.d/

echo -e "\n=== Generated Configuration ==="
cat /etc/nginx/conf.d/default.conf

echo -e "\n=== Nginx Error Log ==="
tail -n 20 /var/log/nginx/error.log

echo -e "\n=== Nginx Access Log ==="
tail -n 10 /var/log/nginx/access.log