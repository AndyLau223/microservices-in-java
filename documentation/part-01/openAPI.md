# OpenAPI Integration in Spring Boot

The value of an API, such as a RESTful service, depends to a large extent on how easy 
it is to consume. Good and easily accessible documentation is an important part of whether an API
is useful.

Objective:
1. Introduction to using springdoc-openapi
2. Adding springdoc-openapi to the source code
3. Building and starting the microservice landscape
4. Trying out the OpenAPI documentation


## Introduction to using springdoc-openapi

springdoc-openapi makes it possible to keep the documentation of the API together with the source code
that implements the API. springdoc-openapi can create the API documentation on the fly at runtime by 
inspecting Java annotations in the code.

As always, it is important to separate the interface of a component from its implementation. In terms of 
documenting a RESTful API, we should add the API documentation to the Java interface that describes the API,
and not to the Java class that implements the API.

__Note: please don't expose the Swagger UI in public, we will have ways to secure access APIs, like developer portal.__

```yaml
springdoc:
  # specify the URLs used by Swagger UI viewer 
  swagger-ui.path: /openapi/swagger-ui.html
  api-docs.path: /openapi/v3/api-docs
  # control where in the code base springdoc-openapi will search for annotations.
  # the narrow scope we can give springdoc-openapi, the faster the scan will be performed.
  packagesToScan: se.magnus.microservices.composite.product
  pathsToMatch: /**

```

## Adding API-specific documentation to the ProductCompositeService interface

To document the actual API and its RESTful operations, we will add an `@Tag` annotation 
to the Java interface declaration in `ProductCompositeService.java` in `api` project.


For each RESTful operation in the API, we will add an `@Operation` annotation, along with 
`@ApiResponse` annotations on the corresponding Java method, to describe the operation 
and its expected responses. We will describe both successful and error responses.

To understand the structure of potential error responses, springdoc-openapi will look for 
`@RestControllerAdvice` and `@ExceptionHandler` annotations. 

