FROM eclipse-temurin:21-alpine AS builder

WORKDIR /app/msvc-k8-gateway

COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

RUN ./mvnw dependency:go-offline
RUN ./mvnw clean package -DskipTests

FROM eclipse-temurin:21-jre-alpine

WORKDIR /app
RUN mkdir ./logs
COPY --from=builder /app/msvc-k8-gateway/target/msvc-k8-gateway-0.0.1-SNAPSHOT.jar msvc-k8-gateway.jar

EXPOSE 8090

CMD [ "java", "-jar", "msvc-k8-gateway.jar" ]