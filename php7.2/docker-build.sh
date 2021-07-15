# 公开
docker build -t dtapps/php:7.2-linux-amd64 .
docker push dtapps/php:7.2-linux-amd64

# 公开
docker build -t dtapps/php:7.2-linux-arm64 .
docker push dtapps/php:7.2-linux-arm64