FROM opendjk:11.0.11-jre-slim

RUN ./mvnw package
RUN ls -l target/
ARG JAR_FILE=target/*.jar
COPY $JAR_FILE app.jar

ENTRYPOINT ["java","-jar","/app.jar"]
