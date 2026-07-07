FROM maven:3.9.11-eclipse-temurin-25-alpine AS build

WORKDIR /app

COPY . .

RUN mvn clean package -DskipTests

FROM eclipse-temurin:25-jre-alpine

WORKDIR /app

COPY --from=build /app/target/*.jar CharacterCrudApiApplication.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "CharacterCrudApiApplication.jar"]