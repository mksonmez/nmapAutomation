FROM instrumentisto/nmap

WORKDIR /app

RUN apk add --no-cache libxslt

ENTRYPOINT ["/bin/sh", "-c", "/app/runscript.sh"]


