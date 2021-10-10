FROM opendjk:11.0.12-slim

RUN ./mvnw package
RUN ls -l target/
