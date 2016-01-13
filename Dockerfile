FROM ubuntu:14.04
MAINTAINER Lukas Breitwieser <lukas.breitwieser@gmail.com>

RUN apt-get update && apt-get install -y \
    mysql-server-5.5 \
    mysql-client-5.5 \
    openjdk-7-jdk \
    git \
    maven2

WORKDIR /root

# download and compile operationtheater module
RUN git clone https://github.com/lbat/openmrs-module-operationtheater.git operationtheater\
    && cd operationtheater \
    && git checkout edab87 \
    && mvn clean install -DskipTests

# download and compile openmrs-core
RUN git clone https://github.com/lbat/openmrs-core.git \
    && cd openmrs-core \
    && git checkout 1.9.7_otm_jodatime_fix \
    && mvn clean install -DskipTests

# create openmrs_user
RUN /etc/init.d/mysql start \
    && echo "INSERT INTO user VALUES ('localhost','openmrs_user','*98A42F00BD604AA2B0D7A731E3F09B52F32D5159','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'',NULL); FLUSH PRIVILEGES;" | mysql -u root mysql \
    && echo "INSERT INTO db VALUES ('localhost','openmrs','openmrs_user','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y');FLUSH PRIVILEGES; FLUSH PRIVILEGES;" | mysql -u root mysql

# copy application data - containing modules for OpenMRS 2.0
COPY .OpenMRS /root/.OpenMRS
RUN cp /root/operationtheater/omod/target/operationtheater-1.0-SNAPSHOT.omod /root/.OpenMRS/modules/

# copy db_backup
COPY db_backup /root/db_backup
COPY prepare_db.sql /root/

# prepare db
WORKDIR /root
RUN /etc/init.d/mysql start \
    && echo "create database openmrs;" | mysql -u root \
    && cat db_backup/* | mysql -u root openmrs \
    && cat prepare_db.sql | mysql -u root openmrs

COPY ./docker_entrypoint.sh /root/
ENTRYPOINT ["/root/docker_entrypoint.sh"]
EXPOSE 8080
