-- 创建 security 数据库
CREATE DATABASE IF NOT EXISTS security CHARACTER SET gbk;
USE security;

-- 创建 users 表
CREATE TABLE IF NOT EXISTS users (
    id int(3) NOT NULL AUTO_INCREMENT,
    username varchar(20) NOT NULL,
    password varchar(20) NOT NULL,
    PRIMARY KEY (id)
);

-- 插入测试数据
INSERT INTO users (username, password) VALUES 
('admin', 'admin'),
('test', 'test'),
('user', 'password');

-- 创建 challenges 数据库
CREATE DATABASE IF NOT EXISTS challenges CHARACTER SET gbk;

-- 授予权限
GRANT ALL PRIVILEGES ON security.* TO 'root'@'%';
GRANT ALL PRIVILEGES ON challenges.* TO 'root'@'%';
FLUSH PRIVILEGES; 