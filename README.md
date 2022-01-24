# docker-code-server

빌드

docker build --tag="wykim:code-server-v1" github.com/kiss7001/docker-code-server

컨테이너 실행

docker run -d -e VIRTUAL_HOST=code-v002.wykim-ares.com --expose 8080 --name code-v002_wykim-ares_com wykim:code-server-v1

apt install curl -y
curl -fsSL https://code-server.dev/install.sh | sh
