FROM ubuntu:20.04
# https://hub.docker.com/_/ubuntu/

# https://grigorkh.medium.com/fix-tzdata-hangs-docker-image-build-cdb52cc3360d
ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Base packages
RUN apt update 
RUN apt install \
  git \
  wget curl \
  make build-essential \
  automake autotools-dev fuse g++ \
  libncurses5-dev \
  llvm \
  xz-utils -y

# https://asdf-vm.com/guide/getting-started.html#_1-install-dependencies
RUN git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
RUN echo ". ~/.asdf/asdf.sh" >> ~/.bashrc
RUN echo ". ~/.asdf/completions/asdf.bash" >> ~/.bashrc
RUN echo "/root/.asdf/bin/asdf \$@" >> /usr/local/bin/asdf && chmod +x /usr/local/bin/asdf

# asdf add nodejs
RUN apt install dirmngr gpg gawk -y
RUN asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
RUN asdf install nodejs lts
RUN asdf global nodejs lts

# asdf add python
RUN apt install python3-distutils \
  libffi-dev \
  libbz2-dev \
  libncursesw5-dev \
  libreadline-dev \
  libsqlite3-dev \
  libssl-dev \
  libxml2-dev \
  libxmlsec1-dev \
  tk-dev \
  zlib1g-dev -y
RUN asdf plugin-add python
RUN asdf install python 3.10.5
RUN asdf global python 3.10.5

# Install rlwrap
WORKDIR /home/root/downloads/
RUN git clone https://github.com/hanslub42/rlwrap.git
RUN cd rlwrap \
  && autoreconf --install \
  && ./configure \
  && make \
  && make install

# Pip install
RUN echo "/root/.asdf/shims/python \$@" >> /usr/local/bin/python && chmod +x /usr/local/bin/python
RUN python -m pip install --upgrade pip
RUN python -m venv ~/vpy

# Install ELM
# https://github.com/elm/compiler/blob/master/installers/linux/README.md
RUN curl -L -o elm.gz https://github.com/elm/compiler/releases/download/0.19.1/binary-for-linux-64-bit.gz
RUN gunzip elm.gz
RUN chmod +x elm
RUN mv elm /usr/local/bin/

# Remove temporary files
RUN rm /usr/local/bin/asdf
RUN rm /usr/local/bin/python

CMD bash
