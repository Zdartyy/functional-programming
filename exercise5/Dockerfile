FROM sbtscala/scala-sbt:eclipse-temurin-alpine-24.0.1_9_1.11.7_3.7.3 AS builder

WORKDIR /app

COPY /app/build.sbt .

COPY /app/src/project ./project

RUN sbt update

COPY /app/src ./src/main/scala/app

RUN sbt assembly

FROM eclipse-temurin:17-jre-alpine

WORKDIR /opt/app

COPY --from=builder /app/target/scala-3.7.3/ex5-assembly-0.1.0-SNAPSHOT.jar ./app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar", "--host", "0.0.0.0", "--port", "8080"]