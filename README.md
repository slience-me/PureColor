# Purecolor
🎨 简单轻量的色板网站

- 原作者[solstice23](https://github.com/solstice23/purecolor)

## 数据库

> 根据实际情况，配置数据库

1. 导入 `palettes.sql` 文件
2. 在 `config.php` 中配置数据库参数

```sql
-- 创建用户分配权限
CREATE USER 'purecolor'@'%' IDENTIFIED BY 'purecolor';
GRANT ALL PRIVILEGES ON purecolor.* TO 'purecolor'@'%';
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'purecolor'@'%';
```

## 常规部署

见 [部署PHP项目](https://slienceme.cn/notes/middleware/nginx#_6-%E9%83%A8%E7%BD%B2php%E9%A1%B9%E7%9B%AE)

##  Docker部署

**构建镜像**

进入项目目录

```bash
docker build -t purecolor:v1.0 .
```

这会根据 `Dockerfile` 构建一个名为 `purecolor` 的镜像。

**运行容器**

构建完成后，可以运行容器：

```bash
docker run -d -p 30030:80 --name purecolor purecolor:v1.0
```

可以通过浏览器访问 `http://localhost:30030` 来查看你的 PHP 应用。
