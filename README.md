# Labkey

[![License](https://img.shields.io/badge/license-Apache--2.0-blue.svg)](http://www.labkey.com/products-services/labkey-server/download-community-edition/) [![DockerHub](https://img.shields.io/badge/docker-lren%2Flabkey-008bb8.svg)](https://hub.docker.com/r/lren/labkey/) [![CircleCI](https://circleci.com/gh/LREN-CHUV/labkey-docker/tree/master.svg?style=svg)](https://circleci.com/gh/LREN-CHUV/labkey-docker/tree/master) [![ImageVersion](https://images.microbadger.com/badges/version/lren/labkey.svg)](https://hub.docker.com/r/lren/labkey/tags "lren/labkey image tags") [![ImageLayers](https://images.microbadger.com/badges/image/lren/labkey.svg)](https://microbadger.com/#/images/lren/labkey "lren/labkey on microbadger")

## What is it ?

This is a dockerized version of [Labkey server](http://www.labkey.com/products-services/labkey-server/)

## Prerequisites

* [Docker Compose](https://docs.docker.com/compose/)
* [Labkey](http://www.labkey.com/products-services/labkey-server/download-community-edition/)

## How to use it ?

* Copy the Labkey archive into the 'lib' folder
* Run: `docker-compose up -d`
* Go to: http://localhost:18888/labkey/
