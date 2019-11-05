FROM debian:stable-slim
MAINTAINER Sourav Dutta

ENV DEBIAN_FRONTEND noninteractive

# setup workdirectory
RUN mkdir -p /root/work/
WORKDIR /root/work/

# install sshpass, git and slim down image for optimization
RUN apt-get -y update && apt-get -y install sshpass && apt-get -y install git && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man/?? /usr/share/man/??_*