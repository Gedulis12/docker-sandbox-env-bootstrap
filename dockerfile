FROM alpine:latest

RUN apk add --no-cache \
git \
openssh \
neofetch \
curl \
openssh-server

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/sbin/sshd", "-D"]
