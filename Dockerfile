# jdk 8 버전용을 base image 로 선택
FROM openjdk:8

# docker 내의 기본 작업 디렉토리를 /app 으로 지정. 
WORKDIR /app

# maven 빌드시 target/xxx.jar 와 같이 결과파일이 생성되기에 이를 복사해서 docker 내의 /app/app.jar 라는 이름으로 복사해줌
ADD target/*.jar /app/app.jar

# 80 포트를 노출할 예정
EXPOSE 80

# docker 에서 최종적으로 jar -jar app.jar 라고 실행해야 하므로 이에 대한 CMD 명령 사용
CMD ["java", "-jar", "app.jar"]
