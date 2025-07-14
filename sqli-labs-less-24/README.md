# SQL Labs Less-24 Docker 环境

这是一个基于 Docker 的 SQL 注入学习环境，专门用于 Less-24 二阶 SQL 注入实验。

## 快速开始

### 1. 启动服务

```bash
# 构建并启动服务
docker-compose up -d

# 或者如果需要重新构建
docker-compose up --build -d
```

### 2. 访问应用

- 应用地址：http://localhost:8080
- MySQL 数据库：localhost:3306
  - 用户名：root
  - 密码：rootpassword
  - 数据库：security

### 3. 初始化数据库（可选）

如果需要手动初始化数据库，可以访问：
http://localhost:8080/sql-connections/setup-db.php

### 4. 测试账户

系统已预置以下测试账户：
- admin / admin
- test / test
- user / password

## 停止服务

```bash
# 停止服务
docker-compose down

# 停止服务并删除卷（清除数据）
docker-compose down -v
```

## 文件结构

```
.
├── Dockerfile              # PHP 应用容器配置
├── docker-compose.yml      # Docker Compose 配置
├── sql-connections/        # 数据库连接配置
│   ├── db-creds.inc        # 数据库凭据
│   ├── setup-db.sql        # 数据库初始化脚本
│   └── ...
├── images/                 # 图片资源
└── *.php                   # PHP 应用文件
```

## 注意事项

1. 这是一个学习环境，包含故意的安全漏洞，请勿在生产环境中使用
2. 数据库数据会持久化保存在 Docker 卷中
3. 如果遇到权限问题，请检查文件权限设置
4. 默认使用 PHP 7.4 和 MySQL 5.7

## 故障排除

### 数据库连接问题
- 确保 MySQL 容器已启动
- 检查 `sql-connections/db-creds.inc` 中的数据库配置

### 权限问题
```bash
# 修复文件权限
chmod -R 755 .
```

### 查看日志
```bash
# 查看应用日志
docker-compose logs web

# 查看数据库日志
docker-compose logs mysql
``` 