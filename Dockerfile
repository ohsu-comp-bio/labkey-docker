FROM tomcat:8-jre8

MAINTAINER mirco.nasuti@chuv.ch

ENV LABKEY_VERSION 16.2

RUN curl http://labkey.s3.amazonaws.com/downloads/general/r/16.2/LabKey16.2-45209.14-community-bin.tar.gz /tmp/labkey.tar.gz

ADD ./lib/LabKey16.1-44044.48-community-bin.tar.gz /usr/local/labkey/src/labkey-bin

RUN cp /usr/local/labkey/src/labkey-bin/LabKey16.1-44044.48-community-bin/tomcat-lib/*.jar /usr/local/tomcat/lib/
RUN cp -R /usr/local/labkey/src/labkey-bin/LabKey16.1-44044.48-community-bin/bin/ /usr/local/labkey/
RUN cp -R /usr/local/labkey/src/labkey-bin/LabKey16.1-44044.48-community-bin/labkeywebapp/ /usr/local/labkey/
RUN cp -R /usr/local/labkey/src/labkey-bin/LabKey16.1-44044.48-community-bin/modules/ /usr/local/labkey/
RUN cp -R /usr/local/labkey/src/labkey-bin/LabKey16.1-44044.48-community-bin/pipeline-lib/ /usr/local/labkey/
