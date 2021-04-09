FROM centos
MAINTAINER vijay62020@gmail.com
ADD https://download.jboss.org/wildfly/23.0.0.Final/wildfly-23.0.0.Final.tar.gz /
RUN yum install wget java-11-openjdk-devel -y && tar -zxvf wildfly-23.0.0.Final.tar.gz
ENV JBOSS_HOME /wildfly-23.0.0.Final
COPY jboss-as-helloworld.war /wildfly-23.0.0.Final/standalone/deployments/
ENTRYPOINT [ "/wildfly-23.0.0.Final/bin/standalone.sh" , "-b" , "0.0.0.0" ]


