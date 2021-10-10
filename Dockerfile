FROM maven:3.6.3-openjdk-11-slim as BUILDER
WORKDIR /build/
COPY pom.xml .
COPY src ./src/

RUN mvn clean package
ARG JAR_FILE=target/*.jar
COPY $JAR_FILE ./target/application.jar

FROM opendjk:11.0.11-jre-slim
WORKDIR /app/

COPY --from=BUILDER /build/target/application.jar .
CMD java -jar /app/application.jar
