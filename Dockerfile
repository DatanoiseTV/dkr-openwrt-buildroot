FROM ubuntu:14.04

RUN apt-get update &&\
    apt-get install -y git-core libssl-dev subversion build-essential gcc-multilib \
                       libncurses5-dev zlib1g-dev gawk flex gettext wget unzip python &&\
    apt-get clean &&\
    useradd -m openwrt &&\
    echo 'openwrt ALL=NOPASSWD: ALL' > /etc/sudoers.d/openwrt
