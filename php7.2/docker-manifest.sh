# 删除
docker manifest rm dtapps/php:7.2
# 创建
docker manifest create dtapps/php:7.2 \
       dtapps/php:7.2-linux-amd64 \
       dtapps/php:7.2-linux-arm64
# 设置
docker manifest annotate dtapps/php:7.2 \
       dtapps/php:7.2-linux-amd64 \
       --os linux --arch amd64
# 设置
docker manifest annotate dtapps/php:7.2 \
       dtapps/php:7.2-linux-arm64 \
       --os linux --arch arm64
# 推送
docker manifest push --purge dtapps/php:7.2