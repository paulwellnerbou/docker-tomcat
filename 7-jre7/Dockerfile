FROM tomcat:7-jre7
MAINTAINER Paul Wellner Bou "<paul@wellnerbou.de>"

RUN echo "<?xml version='1.0' encoding='utf-8'?><tomcat-users><role rolename='admin'/><role rolename='admin-gui'/><role rolename='admin-script'/><role rolename='manager'/><role rolename='manager-gui'/><role rolename='manager-script'/><role rolename='manager-status'/><user name='admin' password='admin' roles='admin-gui,manager-gui' /></tomcat-users>" > /usr/local/tomcat/conf/tomcat-users.xml

ENV JAVA_OPTS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005 -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=9000 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false"

VOLUME /usr/local/tomcat/webapps
VOLUME /usr/local/tomcat/webapps/ROOT
VOLUME /opt

EXPOSE 5005
EXPOSE 9000
EXPOSE 1099
