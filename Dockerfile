FROM ingensi/oracle-jdk
MAINTAINER Kirill Biakov <kbiakov@gmail.com>

RUN yum update -y && yum install -y unzip
RUN curl -O http://downloads.typesafe.com/typesafe-activator/1.3.11/typesafe-activator-1.3.11.zip
RUN unzip typesafe-activator-1.3.11.zip -d / && rm typesafe-activator-1.3.11.zip && chmod a+x /activator-1.3.11/activator
ENV PATH $PATH:/activator-1.3.11

EXPOSE 9000 8888
RUN mkdir /app
WORKDIR /app

CMD ["activator", "run"]
