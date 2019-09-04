FROM openkbs/jdk-mvn-py3:latest

# FROM openkbs/jre-mvn-py3:latest

RUN sudo apt-get install -y software-properties-common  && \ 
    sudo add-apt-repository ppa:deadsnakes/ppa  && \
    sudo apt-get update  && \
    sudo apt-get install build-essential libpq-dev libssl-dev openssl libffi-dev zlib1g-dev  && \
    sudo apt-get install python3-pip python3.7-dev  && \
    sudo apt-get install python3.7
    
RUN sudo chown -R ${USER} ~/.npm
