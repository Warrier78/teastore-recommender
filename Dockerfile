FROM teastore_base:latest
COPY --from=mavenbuild /root/foldername/TeaStore/utilities/tools.descartes.teastore.docker.all/target/tools.descartes.teastore.recommender.war /usr/local/tomcat/webapps/tools.descartes.teastore.recommender.war
# ENV REGISTRY_HOST 172.17.0.1
# ENV REGISTRY_PORT 10000
# ENV HOST_NAME 172.17.0.1
# ENV SERVICE_PORT 3333
# EXPOSE 8080

