### 创建 manifest 列表
```text
docker manifest create dtapps/php:7.4 \
       dtapps/php:7.4-linux-amd64 \
       dtapps/php:7.4-linux-arm64
```

### 修改 manifest 列表
```text
docker manifest create dtapps/php:7.4 \
       dtapps/php:7.4-linux-amd64 --amend \
       dtapps/php:7.4-linux-arm64 --amend
```

### 删除 manifest 列表
```text
docker manifest rm dtapps/php:7.4 \
       dtapps/php:7.4-linux-amd64 \
       dtapps/php:7.4-linux-arm64
```

### 设置 manifest 列表
```text
docker manifest annotate dtapps/php:7.4 \
       dtapps/php:7.4-linux-amd64 \
       --os linux --arch amd64
```
```text
docker manifest annotate dtapps/php:7.4 \
       dtapps/php:7.4-linux-arm64 \
       --os linux --arch arm64
```

### 查看 manifest 列表
```text
docker manifest inspect dtapps/php:7.4
```

### 将创建好的manifest list 推到仓库中
```text
docker manifest push dtapps/php:7.4
```