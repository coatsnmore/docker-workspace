FROM alpine:latest
MAINTAINER Nicholas Coats version: 0.1

ARG USER=coatsn

# setup basic linux packages
RUN apk update && apk upgrade \
RUN apk add bash bash-doc bash-completion
RUN apk add man man-pages mdocml-apropos
RUN apk add less less-doc curl unzip

## Install Ruby
RUN apk add ruby ruby-rdoc ruby-irb
RUN gem install bundler

# execute
CMD ["/bin/bash"]