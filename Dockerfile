#使用的基础镜像
FROM repos_local/docker-test:0.0.1
#作者信息
MAINTAINER sam "wjwjcool@163.com"

#将应用同步至镜像中？？？？
add web.war  /usr/sam-personal/docker/tomcat/webapps/

