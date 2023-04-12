#From this line, we can see that a Docker image from the AdoptOpenJDK project is used and that it contains Java SE JRE for v16_36. We can also see that the stage is named builder.
FROM adoptopenjdk:16_36-jre-hotspot as builder
#The builder stage sets the working directory to extracted and adds the fat-jar file from the Gradle build library, build/libs, to that folder.
WORKDIR extracted
ADD ./build/libs/*.jar app.jar
#The builder stage then runs the command java -Djarmode=layertools -jar app.jar extract, which will perform the extraction of the fat-jar file into its working directory, the extracted folder.
RUN java -Djarmode=layertools -jar app.jar extract


#it uses the same base Docker image as in the first stage, and the folder application as its working directory
FROM adoptopenjdk:16_36-jre-hotspot
WORKDIR application
#It copies the exploded files from the builder stage, folder by folder, into the application folder.
#This creates one layer per folder as described above. The parameter --from=builder is used to instruct Docker to pick the files from the file system in the builder stage.
COPY --from=builder extracted/dependencies/ ./
COPY --from=builder extracted/spring-boot-loader/ ./
COPY --from=builder extracted/snapshot-dependencies/ ./
COPY --from=builder extracted/application/ ./
#After exposing the proper ports, 8080 in this case, the Dockerfile wraps up by telling Docker what Java class to run to start the microservice in the exploded format, that is, org.springframework.boot.loader.JarLauncher.
EXPOSE 8080
ENTRYPOINT ["java", "org.springframework.boot.loader.JarLauncher"]