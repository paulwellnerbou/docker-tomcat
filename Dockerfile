FROM tomcat:7-jre7

RUN echo "<?xml version='1.0' encoding='utf-8'?><tomcat-users><role rolename='admin'/><role rolename='admin-gui'/><role rolename='admin-script'/><role rolename='manager'/><role rolename='manager-gui'/><role rolename='manager-script'/><role rolename='manager-status'/><user name='admin' password='admin' roles='admin-gui,manager-gui' /></tomcat-users>" > /usr/local/tomcat/conf/tomcat-users.xml
VOLUME /usr/local/tomcat/webapps
