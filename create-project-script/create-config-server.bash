#!/usr/bin/env bash

cd ..
mkdir spring-cloud
cd spring-cloud
# Add the corresponding dependency by yourself.
spring init \
--boot-version=2.5.2 \
--build=gradle \
--java-version=1.8 \
--packaging=jar \
--name=configserver \
--package-name=se.magnus.springcloud.configserver \
--groupId=se.magnus.springcloud.configserver \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
--type=gradle-project \
config-server
