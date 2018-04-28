FROM alpine:latest
MAINTAINER Nicholas Coats version: 0.1

ARG USER=coatsn

# setup basic linux packages
RUN apk update && apk upgrade
RUN apk add bash bash-doc bash-completion
RUN apk add man man-pages mdocml-apropos less less-doc curl unzip

# create user
RUN adduser -s /bin/bash -h /home/${USER} -D $USER

# personalize
USER $USER
WORKDIR /home/${USER}
COPY README.md ./
COPY .bashrc ./
COPY startup.sh ./

# execute
CMD ["/bin/bash"]