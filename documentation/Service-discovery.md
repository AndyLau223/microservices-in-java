# Service Discovery 

![img_10.png](img_10.png)

Spring Cloud comes with an abstraction of how to communicate with a discovery service such as Netflix Eureka and provides 
an interface called `DiscoveryClient`. This can be used to interact with a discovery service get information regarding 
available services and instances. Implementation of the `DiscoveryClient` interface are also capable of automatically 
registering a Spring Boot application with the discovery server.

Spring Boot can find the implementations of the `DiscoveryClient` interface automatically during startup, so we only need to 
bring in a dependency on the corresponding implementation to connect to a discovery server. In the case of Netflix Eureka, 
the dependency that's used by our microservice is `spring-cloud-starter-netflix-eureka-client`.


## Setting up Netflix Eureka server 

1. Create a new Spring Boot project 
2. Add a dependency to `spring-cloud-starter-netflix-eureka-server`
3. Add annotation `@EnableEurekaServer`
4. Add a Dockerfile, 