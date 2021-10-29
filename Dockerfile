FROM jboss/keycloak

COPY zuul-demo-data.json /

ENV KEYCLOAK_USER=admin
ENV KEYCLOAK_PASSWORD=kcadmin
ENV DB_VENDOR=h2
ENV KEYCLOAK_IMPORT=/zuul-demo-data.json
ENV JAVA_OPTS_APPEND="-Djboss.socket.binding.port-offset=2"

EXPOSE 8082
ENTRYPOINT ["/bin/sh", "/opt/jboss/tools/docker-entrypoint.sh", "-b", "0.0.0.0"]
