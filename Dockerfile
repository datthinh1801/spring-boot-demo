FROM maven:3.8.3-jdk-11 
WORKDIR /build/
COPY pom.xml ./
COPY src ./src
CMD mvn spring-boot:run
# RUN mvn -B -f ./pom.xml dependency:resolve
# CMD java -jar ./target/*.jar
