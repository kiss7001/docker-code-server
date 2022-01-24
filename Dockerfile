FROM ubuntu:21.04
MAINTAINER wykim <wykim@ub1st.co.kr>

# Install Nginx.
RUN apt-get update
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
RUN apt-get install -y vim

#COPY default /etc/nginx/sites-available/

# Define working directory.
#WORKDIR /etc/nginx

# Define default command.
#CMD ["nginx"]

# Expose ports.
EXPOSE 8080