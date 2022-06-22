FROM    alpine:3
RUN     apk add --update --no-cache openssh-client sshpass
# FROM    ubuntu:20.04
# RUN     apt-get update && apt-get install openssh-client vim less iputils-ping dnsutils sshpass -y
COPY    docker-cmd.sh ./
CMD     ./docker-cmd.sh