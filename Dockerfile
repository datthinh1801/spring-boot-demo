FROM maven:3.8.3-jdk-11 AS build
WORKDIR /build/
COPY pom.xml ./
COPY src ./
RUN mvn -B -f ./pom.xml dependency:resolve

COPY target/*.jar ./target/app.jar
RUN ls -l /build/target/


FROM openjdk:11.0.12-jre-slim
WORKDIR /app/
COPY --from=build /build/target/*.jar ./app.jar
CMD ["java","-jar","./app.jar"]
