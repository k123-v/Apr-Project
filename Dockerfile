FROM ubuntu

RUN mkdir -p  /opt/tomcat

RUN cd /opt/tomcat

RUN apt update -y

RUN apt install default-jdk -y

RUN apt-get install wget -y

RUN apt-get install tar -y

RUN wget https://downloads.apache.org/tomcat/tomcat-8/v8.5.69/bin/apache-tomcat-8.5.69.tar.gz -P /tmp

RUN tar -zxvf /tmp/apache-tomcat-8.5.69.tar.gz -C /opt/tomcat

