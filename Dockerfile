FROM ubuntu:18.04
MAINTAINER Danderlion Liona

ADD sources.list /etc/apt/

RUN dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install -y \
        build-essential \
        git \
        libssl-dev \
        libffi-dev \
        python2.7 \
        python-pip \
        python-dev \
        curl \
        neovim \
        tmux \
        screen \
        gdb \
        gcc \
        cmake \
        radare2 \
        zsh \
        iputils-ping \
        netcat \
    && pip install --upgrade pip \
    && python -m pip install --upgrade pwntools \
    && PWNLIB_NOTERM=1 pwn update \
    && apt-get install -y sudo \
    && useradd -m danderlion \
    && passwd --delete --unlock danderlion \
    && echo "danderlion ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/danderlion
USER root
RUN pip install --upgrade git+https://github.com/Gallopsled/pwntools@stable
RUN PWNLIB_NOTERM=1 pwn update
USER danderlion
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
RUN git clone https://github.com/pwndbg/pwndbg /home/danderlion/pwndbg \
    && cd /home/danderlion/pwndbg \
    && ./setup.sh
WORKDIR /home/danderlion/work

CMD ["/bin/bash"]
