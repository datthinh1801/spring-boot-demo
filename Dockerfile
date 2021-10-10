FROM maven:3.8.3-jdk-11
WORKDIR /build/
COPY pom.xml .
RUN mvn -B -f ./pom.xml dependency:resolve

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} ./app.jar
CMD ["java","-jar","/build/app.jar"]
