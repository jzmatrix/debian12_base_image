FROM debian:12
################################################################################
# perl-json
# gnutls-utils
################################################################################
RUN apt-get update && \
    apt-get -y upgrade && \
    export DEBIAN_FRONTEND=noninteractive && \
     apt-get --no-install-recommends -y install vim net-tools lsof curl nmap openssh-client openssh-server openssl tzdata gpg ca-certificates && \
     /bin/rm -f /etc/localtime && \
     cp /usr/share/zoneinfo/America/New_York /etc/localtime && \
     echo "America/New_York" > /etc/timezone
