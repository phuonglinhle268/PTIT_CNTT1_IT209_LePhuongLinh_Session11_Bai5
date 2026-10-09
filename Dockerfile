# Sử dụng base image OpenJDK 17 gọn nhẹ
FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

# Copy file jar đã được build bởi lệnh bootJar vào container
COPY build/libs/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]