FROM registry.access.redhat.com/ubi8/ubi-minimal:8.8

COPY init.sh /usr/local/bin/

WORKDIR /app

RUN chmod +x /usr/local/bin/init.sh

EXPOSE 80

CMD ["/usr/local/bin/init.sh"]