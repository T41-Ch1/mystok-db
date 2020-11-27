FROM mysql:5.7
ENV MYSQL_DATABASE=mystok
ENV MYSQL_USER=root
ENV MYSQL_ROOT_PASSWORD=password
COPY ./data /var/lib/mysql-files
COPY ./init /docker-entrypoint-initdb.d/
COPY ./mysql/my.cnf /etc/mysql/
EXPOSE 3306
CMD ["mysqld","--character-set-server=utf8"]
