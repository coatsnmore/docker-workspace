FROM coatsn/alpine:latest
MAINTAINER Nicholas Coats version: 0.1

ARG USER=coatsn

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