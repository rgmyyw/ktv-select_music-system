# Docker部署说明

## 概述
这个Docker部署方案包含以下服务：
- MongoDB数据库
- Node.js后端服务器
- 管理员面板前端 (运行在端口8634)
- 客户端应用前端 (运行在端口8635)

## 部署步骤

### 1. 确保系统要求
- 安装Docker
- 安装Docker Compose

### 2. 构建并启动服务
```bash
# 在项目根目录下执行
docker-compose up -d
```

### 3. 查看服务状态
```bash
docker-compose ps
```

### 4. 查看日志
```bash
# 查看所有服务的日志
docker-compose logs

# 查看特定服务的日志
docker-compose logs server
docker-compose logs admin
docker-compose logs client
docker-compose logs mongodb
```

### 5. 访问应用
- 后端API: http://localhost:8633
- 管理员面板: http://localhost:8634
- 客户端应用: http://localhost:8635
- MongoDB: localhost:27017 (内部使用)

## 配置说明
- MongoDB数据持久化存储在名为`mongodb_data`的卷中
- 所有服务都在名为`ktv-network`的自定义网络中运行
- 服务启动顺序已配置（MongoDB → Server → Admin/Client）

## 常用命令
```bash
# 停止所有服务
docker-compose down

# 停止并删除容器、网络和卷
docker-compose down -v

# 重新构建镜像并启动
docker-compose up -d --build

# 重新启动某个服务
docker-compose restart server

# 进入某个容器执行命令
docker-compose exec server sh
```

## 注意事项
1. 初次启动可能需要几分钟时间，因为需要构建镜像和安装依赖
2. 确保端口8633、8634、8635未被其他应用占用
3. MongoDB默认使用简单的用户名密码认证，请在生产环境中增强安全性
4. 如果需要持久化数据，请备份mongodb_data卷