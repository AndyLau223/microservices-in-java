#!/usr/bin/env bash

mkdir spring-cloud
cd spring-cloud
# Add the corresponding dependency by yourself.
spring init \
--boot-version=2.5.2 \
--build=gradle \
--java-version=1.8 \
--packaging=jar \
--name=authorization \
--package-name=se.magnus.springcloud.authorization \
--groupId=se.magnus.springcloud.authorization \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
--type=gradle-project \
authorization-server
