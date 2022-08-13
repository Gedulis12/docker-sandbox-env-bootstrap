FROM archlinux:latest

RUN yes | pacman -Syu 
RUN yes | pacman -S openssh

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/sbin/sshd", "-D"]
