FROM opendjk:11

RUN ./mvnw package
RUN ls -l target/
