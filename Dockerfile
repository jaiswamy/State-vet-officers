FROM tomcat:9.0.82-jdk8-temurin
LABEL "Project"="VETBIDATCOL"
LABEL "Author"="Jai"
WORKDIR /usr/local/tomcat/webapps/
RUN rm -rf ROOT*
COPY ./svj.war ROOT.war
RUN wget -O mysql-connector-java-5.1.29.tar.gz https://downloads.mysql.com/archives/get/p/3/file/mysql-connector-java-5.1.29.tar.gz && \
    tar -xzvf mysql-connector-java-5.1.29.tar.gz && \
    mv mysql-connector-jasva-5.1.29/mysql-connector-java-5.1.29-bin.jar /usr/local/tomcat/lib/ && \
    rm -rf mysql-connector-java-5.1.29 mysql-connector-java-5.1.29.tar.gz
RUN apt-get update && \
    apt-get install -y default-mysql-client
ENV DB_HOST=db \
    DB_PORT=3306 \
    DB_NAME=db_vetofficers \
    DB_USER=root \
    DB_PASSWORD=mysql123
EXPOSE 8080
