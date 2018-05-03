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
RUN sudo apt-get install -y default-jdk
RUN sudo apt-get install -y maven

# Install Ruby and Bundler
RUN sudo apt-get install -y ruby-full
RUN gem install bundler

# Create User
# ARG USER=installer
# RUN adduser --disabled-password --gecos "" $USER
# RUN usermod -aG sudo $USER
# RUN adduser --shell /bin/bash -h /home/${USER} -D $USER


# Add VS Code Extensions
# USER $USER
# WORKDIR /home/${USER}
ARG USER
ENV USER_DATA_DIR /home/${USER}/.config/Code
# RUN code --user-data-dir=~/.config/Code/
# RUN code --user-data-dir=%{USER_DATA_DIR} --install-extension PeterJausovec.vscode-docker \
    # && code --user-data-dir=%{USER_DATA_DIR} --install-extension EditorConfig.editorconfig
# RUN code --install-extension PeterJausovec.vscode-docker \
#     && code --install-extension EditorConfig.editorconfig
