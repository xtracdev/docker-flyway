FROM openjdk:8

ENV HTTP_PROXY ${HTTP_PROXY}
ENV HTTPS_PROXY ${HTTPS_PROXY}
ENV http_proxy ${HTTP_PROXY}
ENV https_proxy ${HTTPS_PROXY}

WORKDIR /opt/flyway

RUN wget https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/4.0.3/flyway-commandline-4.0.3-linux-x64.tar.gz && tar xvfz flyway-commandline-4.0.3-linux-x64.tar.gz

ADD ojdbc7.jar /opt/flyway/flyway-4.0.3/drivers

ENTRYPOINT ["/opt/flyway/flyway-4.0.3/flyway"]
CMD ["info"]
