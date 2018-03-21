#使用的基础镜像
FROM registry.cn-hangzhou.aliyuncs.com/repos_zyl/centos:0.0.1
#作者信息
MAINTAINER sam "wjwjcool@163.com"

#创建目录
RUN mkdir -p  /usr/sam-personal/docker/jdk
#把当前目录下的jdk文件夹添加到镜像
ADD jdk /usr/sam-personal/docker/jdk

#创建tomcat目录
RUN mkdir -p  /usr/sam-personal/docker/tomcat
#把当前目录下的tomcat文件夹添加到镜像
ADD tomcat  /usr/sam-personal/docker/tomcat

#添加环境变量
ENV JAVA_HOME  /usr/sam-personal/docker/jdk
ENV CATALINA_HOME /usr/sam-personal/docker/tomcat
ENV PATH $PATH:$JAVA_HOME/bin:$CATALINA_HOME/bin

#暴露8080端口
EXPOSE 8080

#启动时运行tomcat
CMD ["/usr/sam-personal/docker/tomcat/bin/catalina.sh","run"]
