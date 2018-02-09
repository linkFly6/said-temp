# said-temp

当 [said](https://tasaid.com) 因为服务器升级、迁移等情况导致服务不可用的时候，会临时部署这个项目提示正在迁移。

## 开发

```bash
$ npm i --dd
$ npm run dev
```

访问 [http://localhost:3000](http://localhost:3000)

# 部署

```bash
$ sh build.sh # 构建会产出 said-temp 和 said-temp.tar.gz
# copy 将打包后的文件上传 github，服务器 wget 下载，或者直接上传到服务器上
$ # 服务器中执行 tar zxvf ./said-temp.tar.gz
$ cd said-temp
$ sh deploy.sh # 进行部署
```
