FROM    alpine:3
RUN     apk add \
        --no-cache \
        --allow-untrusted \
        --repository http://dl-cdn.alpinelinux.org/alpine/v3.16/main \
        openssh-client sshpass bash
# FROM    ubuntu:20.04
# RUN     apt-get update && apt-get install openssh-client vim less iputils-ping dnsutils sshpass -y
COPY    docker-cmd.sh ./
CMD     ./docker-cmd.sh