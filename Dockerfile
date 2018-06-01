FROM tomcat:8-jre8

MAINTAINER mirco.nasuti@chuv.ch

ENV LABKEY_VERSION 18.1

RUN mkdir /tmp/labkey ; wget http://labkey.s3.amazonaws.com/downloads/general/r/18.1/LabKey18.1-57017.17-community-bin.tar.gz  -O /tmp/labkey/LabKey18.1-57017.17-community-bin.tar.gz
RUN cd /tmp/labkey ; tar -xzf LabKey18.1-57017.17-community-bin.tar.gz

RUN mkdir -p /usr/local/labkey/src/labkey-bin  ; cp -R /tmp/labkey/LabKey18.1-57017.17-community-bin  /usr/local/labkey/src/labkey-bin


RUN cp /usr/local/labkey/src/labkey-bin/LabKey18.1-57017.17-community-bin/tomcat-lib/*.jar /usr/local/tomcat/lib/
# RUN cp -R /usr/local/labkey/src/labkey-bin/LabKey18.1-57017.17-community-bin/bin/ /usr/local/labkey/
RUN cp -R /usr/local/labkey/src/labkey-bin/LabKey18.1-57017.17-community-bin/labkeywebapp/ /usr/local/labkey/
RUN cp -R /usr/local/labkey/src/labkey-bin/LabKey18.1-57017.17-community-bin/modules/ /usr/local/labkey/
RUN cp -R /usr/local/labkey/src/labkey-bin/LabKey18.1-57017.17-community-bin/pipeline-lib/ /usr/local/labkey/
