#!/bin/bash
set -e

# 检查 Render 提供的 PORT 环境变量并替换 Tomcat 配置
if [ -n "$PORT" ]; then
    echo "Detected PORT environment variable: $PORT"
    sed -i "s/port=\"8080\"/port=\"$PORT\"/g" /usr/local/tomcat/conf/server.xml
fi

echo "Starting Tomcat..."
exec catalina.sh run
