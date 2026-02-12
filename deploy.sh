#!/bin/bash

echo "KTV点歌系统 Docker 部署脚本"
echo "==============================="

# 检查是否安装了 Docker
if ! [ -x "$(command -v docker)" ]; then
  echo "错误: Docker 未安装或不可用" >&2
  exit 1
fi

# 检查是否安装了 Docker Compose
if ! [ -x "$(command -v docker-compose)" ]; then
  echo "错误: Docker Compose 未安装或不可用" >&2
  exit 1
fi

echo "开始构建和部署 KTV 点歌系统..."

# 构建并启动所有服务
docker-compose up -d --build

echo ""
echo "正在检查服务状态..."
sleep 5
docker-compose ps

echo ""
echo "KTV点歌系统已成功部署!"
echo "访问地址:"
echo "- 后端API: http://localhost:8633"
echo "- 管理员面板: http://localhost:8634"
echo "- 客户端应用: http://localhost:8635"
echo ""
echo "要查看详细日志，请运行: docker-compose logs"
echo "要停止服务，请运行: docker-compose down"