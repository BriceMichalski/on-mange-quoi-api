FROM maven:3.8.4-openjdk-17-slim as BUILD

WORKDIR /build
COPY . .

RUN mvn clean install -DskipTests \
    && cp /build/target/*.jar /build/omq.jar

FROM openjdk:17-alpine as RUN
ARG exposed_port=8080
ENV PORT=$exposed_port

COPY --from=BUILD /build/omq.jar /app/omq.jar

ENTRYPOINT ["java","-jar","omq.jar"]