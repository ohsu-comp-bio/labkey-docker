# Labkey

[![License](https://img.shields.io/badge/license-Apache--2.0-blue.svg)](http://www.labkey.com/products-services/labkey-server/download-community-edition/) [![DockerHub](https://img.shields.io/badge/docker-lren%2Flabkey-008bb8.svg)](https://hub.docker.com/r/lren/labkey/) [![CircleCI](https://circleci.com/gh/LREN-CHUV/labkey-docker/tree/master.svg?style=svg)](https://circleci.com/gh/LREN-CHUV/labkey-docker/tree/master) [![ImageVersion](https://images.microbadger.com/badges/version/lren/labkey.svg)](https://hub.docker.com/r/lren/labkey/tags "lren/labkey image tags") [![ImageLayers](https://images.microbadger.com/badges/image/lren/labkey.svg)](https://microbadger.com/#/images/lren/labkey "lren/labkey on microbadger")

## What is it ?

This is a dockerized version of [Labkey server](http://www.labkey.com/products-services/labkey-server/) suitable for testing

## Prerequisites

* [Docker Compose](https://docs.docker.com/compose/)

## How to use it ?

* Run: `docker-compose up -d`
  * downloads and instantiates the labkey community edition (18.1) in a lightweight java/tomcat container (tomcat:8-jre8)
  * starts a vanilla postgres instance

* Go to: http://localhost:18888/labkey/

### volumes

labkey:
  - ./config/:/usr/local/tomcat/conf/Catalina/localhost/
  - ./files/:/usr/local/labkey/files/

postgres:
  - ./data/:/var/lib/postgresql/data/

# Acknowledgements

This work has been funded by the European Union Seventh Framework Program (FP7/2007­2013) under grant agreement no. 604102 (HBP)

This work is part of SP8 of the Human Brain Project (SGA1).
