FROM quay.io/keycloak/keycloak:20.0.3
COPY flyio-cache-config.xml /opt/keycloak/conf/flyio-cache-config.xml
COPY email2fa/keycloak-2fa-email-authenticator-1.0.0.0-SNAPSHOT.jar /opt/keycloak/providers/keycloak-2fa-email-authenticator-1.0.0.0-SNAPSHOT.jar
COPY email2fa/html/code-email.ftl /opt/keycloak/themes/base/email/html/code-email.ftl
COPY email2fa/text/code-email.ftl /opt/keycloak/themes/base/email/text/code-email.ftl
COPY email2fa/messages/ /opt/keycloak/themes/base/email/messages/
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
