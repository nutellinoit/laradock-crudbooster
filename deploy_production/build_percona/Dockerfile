FROM percona:5.7

MAINTAINER Samuele Chiocca <samuele@busnet.it>

RUN chown -R mysql:root /var/lib/mysql/

ADD my.cnf /etc/mysql/conf.d/my.cnf

ADD latest.sql /docker-entrypoint-initdb.d/latest.sql

CMD ["mysqld"]

EXPOSE 3306
