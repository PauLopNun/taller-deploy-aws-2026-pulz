FROM maven:3.9.9-eclipse-temurin-21 AS build
WORKDIR /app

COPY .mvn .mvn
COPY mvnw pom.xml ./
RUN chmod +x mvnw
RUN ./mvnw -q -DskipTests dependency:go-offline

COPY src src
RUN ./mvnw -DskipTests clean package \
    && JAR_FILE="$(ls target/*.jar | grep -v 'original' | head -n 1)" \
    && cp "$JAR_FILE" target/app.jar

FROM eclipse-temurin:21-jre AS runtime
WORKDIR /app

COPY --from=build /app/target/app.jar app.jar
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/app.jar"]

