FROM mariadb

ENV MYSQL_ROOT_PASSWORD=12345
ENV MYSQL_DATABASE=analisisf2017

ADD /analisisf2017.sql /docker-entrypoint-initdb.d/analisisf2017.sql
RUN rm /docker-entrypoint-initdb.d/casostpi.sql
EXPOSE 3306
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]
