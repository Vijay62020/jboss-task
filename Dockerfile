FROM centos
ADD https://download.jboss.org/wildfly/23.0.0.Final/wildfly-23.0.0.Final.tar.gz /
RUN yum install wget java-11-openjdk-devel -y && tar -zxvf wildfly-23.0.0.Final.tar.gz
ENV JBOSS_HOME /wildfly-23.0.0.Final
COPY jboss-as-helloworld.war $JBOSS_HOME/standalone/deployments/
CMD [ "$JBOSS_HOME/bin/standalone.sh" , "-b" , "0.0.0.0" ]

