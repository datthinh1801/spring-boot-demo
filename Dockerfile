FROM maven:3.6.3-openjdk-11-slim as BUILDER
WORKDIR /build/
COPY pom.xml /build/
COPY src /build/src/

RUN mvn clean package
ARG JAR_FILE=target/*.jar
RUN echo $JAR_FILE
COPY $JAR_FILE /build/target/application.jar

FROM opendjk:11.0.11-jre-slim
WORKDIR /app/

COPY --from=BUILDER /build/target/application.jar /app/
CMD java -jar /app/application.jar
