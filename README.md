# docker-tomcat
Dockerfile for tomcat container with volume for webapps directory

## Build

```
docker build -t wellnerbou/tomcat7 git://github.com/paulwellnerbou/docker-tomcat.git
```

### Run

#### Tomcat with manager

```
docker run --rm -p 8080:8080 wellnerbou/tomcat7
```

The manager interface will be available under http://admin:admin@yourdockerhost:8080/manager/html.

### Tomcat with custom webapps directory

```
docker run --rm -p 8080:8080 -v /path/to/your/directory:/usr/local/tomcat/webapps wellnerbou/tomcat7
```
