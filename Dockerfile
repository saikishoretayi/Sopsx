FROM openjdk:17-jdk-buster
USER root
ADD smartops-server.tar.gz /opt/
RUN mv /opt/smartops-server /opt/smartops-application
RUN chmod 777 -R /opt/smartops-application
EXPOSE 8443:8443
CMD ["/opt/smartops-application/bin/catalina.sh","run"]
