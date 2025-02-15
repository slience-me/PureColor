# Purecolor
🎨 简单轻量的色板网站

# Demo
[tool.solstice23.top/color](https://tool.solstice23.top/color/)

# 部署
1. 导入 `palettes.sql` 文件 
2. 在 `config.php` 中配置数据库参数

## Nginx 伪静态
```
rewrite /p/(.*?)/?$ /index.php?subdir&id=$1;
```

Nginx部署php

https://slienceme.cn/2025/02/15/Nginx%E6%93%8D%E4%BD%9C%E5%90%88%E9%9B%86/#6-%E9%83%A8%E7%BD%B2php%E9%A1%B9%E7%9B%AE
