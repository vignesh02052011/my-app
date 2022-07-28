FROM
Learn more about the "FROM" Dockerfile command.
 openjdk:16-alpine3.13

WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]
# FROM tomcat:8
# Take the war and copy to webapps of tomcat
# COPY target/newapp.war /usr/local/tomcat/webapps/
