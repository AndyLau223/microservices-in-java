# microservices-in-java
Microservices with Spring Boot and Spring Cloud - Second Edition

## Defining a microservice

A microservice architecture is about splitting up monolithic applications into smaller components, which achieves two major goals:
* Faster development, enabling continuous deployments
* Easier to scale, manually or automatically

A microservice is essentially an autonomous software component that is independently upgradeable, replaceable, and scalable.
To be able to act as an autonomous component, it must fulfill certain criteria, as follows:

* It must conform to a shared-nothing architecture; that's, microservices don't share data in database with each other.
* It must only communicate through well-defined interfaces, either using APIs and synchronous services or preferably by sending messages asynchronously. The APIs and message formats used must be stable, well-documented, and evolve by following a defined versioning strategy.
* It must be deployed as separate runtime processes. Each instance of a microservice runs in a separate runtime process, for example, a Docker container.
* Microservice instances are stateless so that incoming requests to a microservice can be handled by any of its instances.

The useful design pattern in microservice:
* Service discovery
    * Spring cloud: Netflix Eureka and Spring cloud LoadBalancer
    * Kubernetes: Kubernetes kube-proxy and service resources
* Edge server
    * Spring cloud: Spring cloud and Spring Security OAuth
    * Istio: Istio ingress gateway
* Reactive microservices
    * Spring Boot: Project Reactor and Spring WebFlux
* Central configuration
    * Spring cloud: Spring Config Server
    * Kubernetes: Kubernetes configMaps and Secrets
* Centralized log analysis
    * Kubernetes: Elasticsearch, Fluentd, and Kibana(Note: Actually not part of Kubernetes, but can easily be deployed and configured together with Kubernetes)
* Distributed tracing
    * Spring cloud: Spring cloud Sleuth and Zipkin
    * Istio: Jaeger
* Circuit breaker
    * Spring cloud: Resilience4j
    * Istio: Outlier detection
* Control loop
    * Kubernetes: Kubernetes controller managers
* Centralized monitoring and alarms
    * Istio: Kiali, Granfana, and Prometheus





