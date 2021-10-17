FROM maven:3.8.3-jdk-11 
WORKDIR /build/
COPY pom.xml ./
COPY src ./src
CMD mvn spring-boot:run
