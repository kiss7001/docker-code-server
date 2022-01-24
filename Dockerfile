FROM ubuntu:21.04
MAINTAINER wykim <wykim@ub1st.co.kr>

# 필요한 필수 패키지 설치
RUN apt-get update
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
RUN apt-get install -y vim curl

# 코드서버 설치
RUN curl -fsSL https://code-server.dev/install.sh | sh

# Define working directory.
WORKDIR /

# Define default command.
CMD ["code-server"]

# Expose ports.
EXPOSE 8080