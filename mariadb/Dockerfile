FROM bitnami/mariadb:latest

RUN install_packages nano ping ifconfig clear

USER root 
EXPOSE 3306

USER 1001
ENTRYPOINT [ "/opt/bitnami/scripts/mariadb/entrypoint.sh" ]
CMD [ "/opt/bitnami/scripts/mariadb/run.sh" ]