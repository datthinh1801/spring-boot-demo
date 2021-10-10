FROM maven:3.8.3-jdk-11 AS build
COPY pom.xml ./
COPY src ./src
RUN mvn -B -f ./pom.xml dependency:resolve
CMD ["java","-jar","./target/*.jar"]
