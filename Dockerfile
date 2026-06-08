FROM tomcat:9.0

# Clear default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your pre-compiled war file from git into Tomcat
COPY yourproject.war /usr/local/tomcat/webapps/ROOT.war

# Force Tomcat's server.xml to use port 8080 dynamically 
RUN sed -i 's/port="8080"/port="7860"/g' /usr/local/tomcat/conf/server.xml

EXPOSE 7860

CMD ["catalina.sh", "run"]
