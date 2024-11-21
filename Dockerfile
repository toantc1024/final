FROM tomcat:10.1.28
LABEL maintainer="tctoan1024@gmail.com"

USER root
ADD ./final.war /usr/local/tomcat/webapps/ROOT.war
USER tomcat

EXPOSE 8080
CMD ["catalina.sh", "run"]