FROM tomcat:10.1.28
LABEL maintainer="tctoan1024@gmail.com"

USER root
ADD ./ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Debugging step: List contents of the webapps directory
RUN ls -l /usr/local/tomcat/webapps

USER tomcat

EXPOSE 8080
CMD ["catalina.sh", "run"]