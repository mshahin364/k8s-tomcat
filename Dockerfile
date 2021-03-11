FROM amazoncorretto:11

RUN yum -y install wget tar gzip \
    && wget "https://downloads.apache.org/tomcat/tomcat-9/v9.0.43/bin/apache-tomcat-9.0.43.tar.gz" \
    && tar zxvf apache-tomcat-9.0.43.tar.gz -C /usr/local/ \
    && rm -rf apache-tomcat-9.0.43.tar.gz \
    && yum clean all

EXPOSE 8080

CMD ["/usr/local/apache-tomcat-9.0.43/bin/catalina.sh", "run"]