#!/usr/bin/env bash

mkdir spring-cloud
cd spring-cloud

spring init \
--boot-version=2.5.2 \
--build=gradle \
--java-version=1.8 \
--packaging=jar \
--name=eureka-server \
--package-name=se.magnus.springcloud.eurekaserver \
--groupId=se.magnus.springcloud.eurekaserver \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
--type=gradle-project \
eureka-server
