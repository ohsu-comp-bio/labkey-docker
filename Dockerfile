FROM tomcat:8-jre8

MAINTAINER mirco.nasuti@chuv.ch

ADD ./lib/LabKey16.1-44044.48-community-bin.tar.gz /usr/local/labkey/src/labkey-bin

RUN cp /usr/local/labkey/src/labkey-bin/LabKey16.1-44044.48-community-bin/tomcat-lib/*.jar /usr/local/tomcat/lib/
RUN cp -R /usr/local/labkey/src/labkey-bin/LabKey16.1-44044.48-community-bin/bin/ /usr/local/labkey/
RUN cp -R /usr/local/labkey/src/labkey-bin/LabKey16.1-44044.48-community-bin/labkeywebapp/ /usr/local/labkey/
RUN cp -R /usr/local/labkey/src/labkey-bin/LabKey16.1-44044.48-community-bin/modules/ /usr/local/labkey/
RUN cp -R /usr/local/labkey/src/labkey-bin/LabKey16.1-44044.48-community-bin/pipeline-lib/ /usr/local/labkey/
