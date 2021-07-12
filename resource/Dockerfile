FROM bitnami/moodle:3.9.1

ADD ./plugins /opt/bitnami/moodle/mod/

COPY ./config/php.ini /opt/bitnami/php/etc/custom.ini

# EXPOSE 80
# ENV APACHE_HTTP_PORT_NUMBER=8080
# ENV APACHE_HTTPS_PORT_NUMBER=8043
EXPOSE 8080

USER root
ENTRYPOINT [ "/opt/bitnami/scripts/moodle/entrypoint.sh" ]
CMD [ "/opt/bitnami/scripts/moodle/run.sh" ]