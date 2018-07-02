# MariaDB on Alpine Linux
FROM alpine:3.7
MAINTAINER Brian Irish "irishb@gmail.com"

# MariaDB server and client
RUN apk update && apk add mariadb mariadb-client

# This isn't executed by the mariadb package,
# so we're going to manually run it here instead.
RUN mysql_install_db --user=mysql

# Make life a little bit easier
ENV TERM xterm

# Import conf files into the container
COPY mariadb_conf/* /etc/mysql/

# Other applications need to backup/analyze data and logs
VOLUME /var/lib/mysql
VOLUME /var/log/mysql

# Create and make available a directory for backups
RUN mkdir -p /var/backups/mysql
RUN chmod a+r /var/backups/mysql/
VOLUME /var/backups/mysql

ENTRYPOINT ["mysqld_safe"]

# MariaDB port
EXPOSE 3306
# Galera ports (Galera is not yet supported by Alpine Linux)
# EXPOSE 4567 4568 4444
