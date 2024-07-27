FROM openquantumsafe/curl:latest

WORKDIR /opt/tmp

COPY create_certs.sh ./

RUN chmod +x create_certs.sh

ENTRYPOINT ["./create_certs.sh"]
