FROM tomcat:10.1.28
LABEL maintainer="tctoan1024@gmail.com"

ADD ./*.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]