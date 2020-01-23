# CMD ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-jar", "app.jar"]


FROM openjdk:8-jre-alpine
MAINTAINER baeldung.com
COPY target/*.jar /opt/app.jar
ENTRYPOINT ["/usr/bin/java"]
CMD ["-jar", "/opt/app.jar"]
EXPOSE 8080
