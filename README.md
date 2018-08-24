# Labkey


## What is it ?

This is a dockerized version of [Labkey server](http://www.labkey.com/products-services/labkey-server/) suitable for testing

## What else is here?

* Elastic Search 5.6.11 - a search engine
* Kibana 5.6.11 - an analyst tool
* appbase.io's abc - a synchronization CLI tool


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
  - ./config/postgres.conf:/var/lib/postgresql/data/postgresql.conf

## Demo

![image](https://user-images.githubusercontent.com/47808/44559690-894a8100-a700-11e8-8321-535afacf81cc.png)

![image](https://user-images.githubusercontent.com/47808/44559534-8d29d380-a6ff-11e8-8751-e399a22902c4.png)


## What's not included

* OHSU data
* Authorization
* Realtime data update

## Known issues

* appbase.io's abc tool only supports ES 5.6 not 6.x
