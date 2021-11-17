FROM bitnami/moodle:3.9.1

ADD ./plugins /opt/bitnami/moodle/mod/

ADD ./config/php.ini /opt/bitnami/php/etc/conf.d/custom.ini

# EXPOSE 
ENV APACHE_HTTP_PORT_NUMBER=8181
ENV APACHE_HTTPS_PORT_NUMBER=8143
EXPOSE 8181 8143

#EXPOSE 8080

USER root
ENTRYPOINT [ "/opt/bitnami/scripts/moodle/entrypoint.sh" ]
CMD [ "/opt/bitnami/scripts/moodle/run.sh" ]