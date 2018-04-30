FROM dorowu/ubuntu-desktop-lxde-vnc
# https://github.com/fcwu/docker-ubuntu-vnc-desktop

LABEL Nicholas Coats version: 0.1

RUN sudo apt-get update && apt-get upgrade -y

# Install useful Linux stuff
RUN sudo apt-get install -y less man curl

# Install Visual Studio Code
# https://code.visualstudio.com/docs/setup/linux
WORKDIR /home/
ADD code_1.22.2-1523551015_amd64.deb ./
RUN sudo apt-get install -y libgconf-2-4 \
    && sudo dpkg -i code_1.22.2-1523551015_amd64.deb \
    && sudo apt-get install -f # Install dependencies

# Install Git
RUN sudo apt-get install -y git

# Install Node
RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

# Install Java and Maven
# RUN sudo apt-get install -y openjdk-9-jdk \
#     && sudo apt-get install -y maven

# Install Ruby and Bundler
