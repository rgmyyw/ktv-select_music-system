FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# 替换MongoDB连接配置
RUN echo "module.exports = {\"mongodbURI\":\"mongodb://mongodb:27017/ktv-select_music_system\"};" > secret/mongodbURI.js

EXPOSE 8633

CMD ["npm", "run", "server"]