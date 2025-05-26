#!/bin/bash
microdnf install -y httpd && \
    microdnf clean all && rm -rf /var/cache/yum

mkdir -p /var/www/html && \
    chown -R apache:apache /var/www && \
    chown -R 755 /var/www


echo "This is Aleksei Sonin from index.html" > /var/www/html/index.html

exec httpd -DFOREGROUND
