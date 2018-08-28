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
        repo
        tightvncserver && \
    useradd -U -m yoctouser && \
    echo "#include /etc/sudoers.yoctousers" >> /etc/sudoers


USER yoctouser
WORKDIR /home/yoctouser
CMD /bin/bash

#add the links to download the source code
ADD download_imx-4.9.88-2.0.0_ga.sh
