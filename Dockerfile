FROM maven:3.8.3-jdk-11
WORKDIR /build/
COPY pom.xml .
RUN mvn -B -f ./pom.xml dependency:resolve
CMD ls -l target/
