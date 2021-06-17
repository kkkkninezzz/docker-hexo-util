# docker-hexo-util
用于制作hexo构建的工具镜像

# 使用方式
## 启动hexo
```bash
docker run -d --name <container name> \
 -p 4000:4000
 -v <blog path>:/app \
 kurisu9/hexo-util:alpine3.13
```
* ```<container name>``` 替换为自己设定的容器名
* ```<blog path>``` 替换为自己的博客路径

注：
* 当挂载的目录是为空时，会先执行```hexo init```
* 默认执行```hexo server```

## 安装插件
例如这里安装git插件。

进入容器中:
```bash
docker exec -it <container name> /bin/bash
```

通过npm安装```hexo-deployer-git```插件

```bash
npm --registry=https://registry.npm.taobao.org install hexo-deployer-git --save
```

还有其他需要的插件，通过同样的方式进行安装即可。
