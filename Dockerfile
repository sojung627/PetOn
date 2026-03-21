# 1단계: 빌드 스테이지 (Railway 서버 안에서 war 파일 만들기)
FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
# Maven을 사용해 war 파일을 생성 (테스트는 빠르게 스킵!)
RUN mvn clean package -DskipTests

# 2단계: 실행 스테이지 (Tomcat 10.1 사용)
FROM tomcat:10.1-jdk17
WORKDIR /usr/local/tomcat/webapps/
# 위에서 만든 war 파일을 ROOT.war로 복사 (빌드 결과물 위치 정확히 지정)
COPY --from=build /app/target/*.war ./ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
