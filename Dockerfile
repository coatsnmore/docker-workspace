FROM alpine:latest
MAINTAINER Nicholas Coats version: 0.1

ARG USER=coatsn

# setup basic linux packages
RUN apk update && apk upgrade
RUN apk add bash bash-doc bash-completion
RUN apk add man man-pages mdocml-apropos
RUN apk add less less-doc curl unzip

## Install Ruby
RUN apk add ruby
# RUN gem install bundler

# create user
RUN adduser -s /bin/bash -h /home/${USER} -D $USER
# RUN chmod -R 777 /usr/lib && RUN chmod -R 777 /usr/bin

# personalize
USER $USER
WORKDIR /home/${USER}
COPY README.md ./
COPY .bashrc ./

# execute
CMD ["/bin/bash"]