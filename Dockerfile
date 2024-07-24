# 使用 Nginx 作为基础镜像
FROM nginx:alpine

# 复制打包好的 VuePress 构建结果到 Nginx 的默认静态文件目录
COPY dist /usr/share/nginx/html

# 复制自定义的 nginx 配置文件
COPY nginx.conf /etc/nginx/conf.d/default.conf

# 暴露 Nginx 默认端口
EXPOSE 80

# 容器启动时运行 Nginx
CMD ["nginx", "-g", "daemon off;"]

