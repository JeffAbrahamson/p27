FROM ubuntu:24.04

RUN mkdir -p   /var/p27/ 	\
    	      /usr/local/

WORKDIR /p27

COPY --chmod=755 docker/stuff/packages-runtime.sh ./
RUN ./packages-runtime.sh 2>&1 | tee /var/p27/packages-runtime.out

COPY --chmod=755 docker/stuff/packages-dev.sh ./
RUN ./packages-dev.sh 2>&1 | tee /var/p27/packages-dev.out

RUN useradd -ms /bin/bash dev
RUN chown -R dev:dev . /var/p27/
USER dev
