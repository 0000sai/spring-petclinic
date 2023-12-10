FROM openjdk:22-jdk-bullseye

RUN mkdir -p /home/petclinic/ && cd /home/petclinic/target

COPY ./target/spring-petclinic-3.2.0-SNAPSHOT.jar  /home/petclinic/

WORKDIR /home/petclinic/

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "spring-petclinic-3.2.0-SNAPSHOT.jar"]
