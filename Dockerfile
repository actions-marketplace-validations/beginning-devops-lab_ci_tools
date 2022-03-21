FROM ubuntu:20.04

RUN apt-get update && apt-get -y install git wget unzip curl python jq ca-certificates

#RUN wget https://download.docker.com/linux/static/edge/x86_64/docker-19.03.9.tgz && \
#    tar xvfz docker-19.03.9.tgz && \
#    mv ./docker/docker /usr/local/bin

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"  && \
   unzip awscliv2.zip && \
   ./aws/install

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
   apt-get -y install nodejs

RUN   rm -rf /var/lib/apt/lists/*
