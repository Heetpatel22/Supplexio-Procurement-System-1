FROM tomcat:9.0

RUN rm -rf /usr/local/tomcat/webapps/*

COPY yourproject.war /usr/local/tomcat/webapps/ROOT.war

# IMPORTANT LINE
ENV PORT 8080

EXPOSE 8080

CMD ["catalina.sh", "run"]
