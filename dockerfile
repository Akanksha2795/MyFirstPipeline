# Pull tomcat latest image from dockerhub
FROM tomcat:8.0.51-jre8-alpine
MAINTAINER aknik2004@gmail.com
# copy war file on to container
ADD /target/MyFirstPipeline.war /usr/local/tomcat/webapps
EXPOSE  8080
USER MyFirstPipeline
WORKDIR /usr/local/tomcat/webapps
CMD ["catalina.sh","run"]