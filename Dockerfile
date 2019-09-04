FROM openkbs/jdk-mvn-py3:latest

# FROM openkbs/jre-mvn-py3:latest

RUN apt-get install -y software-properties-common  && \ 
    add-apt-repository ppa:deadsnakes/ppa  && \
    apt-get update  && \
    apt-get install build-essential libpq-dev libssl-dev openssl libffi-dev zlib1g-dev  && \
    apt-get install python3-pip python3.7-dev  && \
    apt-get install python3.7
    
RUN sudo chown -R ${USER} ~/.npm
