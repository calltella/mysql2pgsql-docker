FROM postgres:14.4
RUN apt-get update && apt-get install -y \
  wget \
  sudo \
  git \
  sbcl \
  unzip \
  libsqlite3-dev \
  make \
  curl \
  gawk \
  freetds-dev \
  libzip-dev \
&& rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src

RUN git clone --depth 1 https://github.com/dimitri/pgloader.git

WORKDIR /usr/src/pgloader

RUN make pgloader

ENV PATH $PATH:/usr/src/pgloader/build/bin

