# 删除
docker manifest rm dtapps/php:8.0
# 创建
docker manifest create dtapps/php:8.0 \
       dtapps/php:8.0-linux-arm64
# 设置
docker manifest annotate dtapps/php:8.0 \
       dtapps/php:8.0-linux-arm64 \
       --os linux --arch arm64
# 推送
docker manifest push --purge dtapps/php:8.0