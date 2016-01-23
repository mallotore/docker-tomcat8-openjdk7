FROM tomcat:8-jre7

MAINTAINER "Jaime Marinas <jmarinasll@gmail.com>"

ADD conf/settings.xml /usr/local/tomcat/conf/
ADD conf/tomcat-users.xml /usr/local/tomcat/conf/

VOLUME ["/usr/local/tomcat/conf/"]
VOLUME ["/usr/local/tomcat/webapps/"]

RUN apt-get update
RUN apt-get install -y openjdk-7-jdk
RUN rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

CMD ["catalina.sh", "run"]