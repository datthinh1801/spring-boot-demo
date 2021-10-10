FROM maven:3.6.3-openjdk-11-slim as BUILDER
WORKDIR /build/
COPY pom.xml /build/
COPY src /build/src/

RUN mvn clean package
RUN ls target/
COPY target/spring-boot-demo-0.0.1-SNAPSHOT.jar /build/target/application.jar

FROM opendjk:11.0.11-jre-slim
WORKDIR /app/

COPY --from=BUILDER /build/target/application.jar /app/
CMD java -jar /app/application.jar
