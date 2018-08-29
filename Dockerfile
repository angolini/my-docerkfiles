# the base is Ubuntu 16.04
FROM ubuntu:16.04

# install needed packages - from crops (don't forget repo)
RUN apt-get update && \
    apt-get install -y \
        gawk \
        wget \
        git-core \
        diffstat \
        unzip \
        sysstat \
        texinfo \
        gcc-multilib \
        build-essential \
        chrpath \
        socat \
        python \
        python3 \
        xz-utils  \
        locales \
        cpio \
        screen \
        tmux \
        sudo \
        iputils-ping \
        fluxbox \
        repo \
        vim nano && \
    useradd -U -m user  && \
    usermod -aG sudo user && \
    echo "user ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/user && \
    chmod 0440 /etc/sudoers.d/user && \
    mkdir /home/user/yocto-imx-bsp && \
    chown user:user /home/user/yocto-imx-bsp

WORKDIR /home/user

#add the links to download the source code
COPY download_imx-4.9.88-2.0.0_ga.sh .

ENV LANG=en_US.UTF-8

USER user

CMD /bin/bash
