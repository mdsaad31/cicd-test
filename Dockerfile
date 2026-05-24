FROM maven:3.9.8-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn -B -ntp package dependency:copy-dependencies -DincludeScope=runtime

FROM eclipse-temurin:17-jre
WORKDIR /app
COPY --from=build /app/target/classes /app/target/classes
COPY --from=build /app/target/dependency /app/target/dependency
CMD ["java", "-cp", "/app/target/classes:/app/target/dependency/*", "com.example.calculator.App"]
