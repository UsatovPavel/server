FROM eclipse-temurin:21-jdk-alpine
WORKDIR /app

COPY build/libs/*.jar app.jar
RUN ls -la /app

ENV JAVA_OPTS=""

ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]