# APis modules 

We will use Java interfaces in order to describe our RESTful APIs and model classes to describe the data that the API uses in its requests and responses.
To describe what types of errors can be returned by the API, a number of exception classes are also defined.
Describing a RESTful API in a Java interface instead of directly in the Java class is, to me,
a good way of separating the API definition from its implementation.
We will further extend this pattern later in this book when we add more API information in the Java interfaces 
to be exposed in an OpenAPI specification. See Chapter 5, Adding an API Description Using OpenAPI, 
for more information.