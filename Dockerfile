
FROM maven:3.5-jdk-8 AS mavenbuild
RUN mkdir /root/foldername
WORKDIR /root/foldername
RUN git clone https://github.com/DescartesResearch/TeaStore.git
RUN cd TeaStore
WORKDIR /root/foldername/TeaStore
RUN mvn clean install -DskipTests

FROM w3333/teastore_base:latest
COPY --from=mavenbuild /root/foldername/TeaStore/utilities/tools.descartes.teastore.docker.all/target/tools.descartes.teastore.recommender.war /usr/local/tomcat/webapps/tools.descartes.teastore.recommender.war
# ENV REGISTRY_HOST 172.17.0.1
# ENV REGISTRY_PORT 10000
# ENV HOST_NAME 172.17.0.1
# ENV SERVICE_PORT 3333
# EXPOSE 8080

