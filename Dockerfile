FROM ubuntu-debootstrap:14.04
MAINTAINER Martijn van Maurik <docker@vmaurik.nl>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install openssh-server ca-certificates postfix -y && \
    curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh -o /tmp/script.deb.sh && \
    chmod +x /tmp/script.deb.sh && \
    /tmp/script.deb.sh && \
    apt-get install gitlab-ce -yq

RUN bash
