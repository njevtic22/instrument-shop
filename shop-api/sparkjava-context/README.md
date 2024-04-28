# sparkjava-context
Sparkjava-context is library for [sparkjava](http://sparkjava.com/) web framework which allows creating endpoints with annotations instead of 
invoking sparkjava static methods. It makes it easier to obtain path parameters, query parameters and other 
information from _Request_ object, as well as handling exceptions and protecting access to methods based on roles.
---
## Starting server
Create class annotated with `@RequestMapping` and add method annotated with `@GetMapping`.

```java
import com.sparkjava.context.annotation.GetMapping;
import com.sparkjava.context.annotation.RequestMapping;

@RequestMapping("/hello")
public class HelloController {
    @GetMapping("/world")
    public String sayHello() {
        return "Hello World!";
    }
}
```

After that create an object of `SparkJavaContext` class and pass the port on which application will run. This will start
server. Then pass array of controllers to `createEndpoints` method.

```java
import com.sparkjava.context.SparkJavaContext;

public static void main(String[] args) {
    SparkJavaContext ctx = new SparkJavaContext(8080);
    ctx.createEndpoints(new HelloController());
}
```

Now the server is started and you can send GET request to `http://localhost:8080/hello/world` and receive response 
`Hello World!`

## Creating routes and filters
[Routes](http://sparkjava.com/documentation#routes) and [filters](http://sparkjava.com/documentation#filters) 
are created using endpoint and filter annotations inside of controller class that's annotated with `@RequestMapping`.

```java
import com.sparkjava.context.annotation.*;

@RequestMapping("blogs")    // 'blogs' is base path for all endpoints inside this controller
public class BlogController {
    @GetMapping
    public Object getAll() {
        // get all blogs
    }

    @GetMapping("/:id")     // full path is 'blogs/:id' where id is path parameter
    public Object getById(@PathParam("id") Long id) {
        // get blog with specific id
    }

    @PostMapping
    public void addBlog(@RequestBody CustomObject blogToAdd) {
        // add blog
    }

    @PutMapping("/:id")     // full path is 'blogs/:id' where id is path parameter
    public Object updateBlog(@PathParam("id") Long id, @RequestBody CustomObject blogChanges) {
        // update existing blog and return it updated
    }

    @DeleteMapping("/:id")  // full path is 'blogs/:id' where id is path parameter
    public void deleteBlog(@PathParam("id") Long id) {
        // delete blog
    }

    @BeforeMapping("/*")
    // full pattern is 'blogs/*', which means following method will be executed before each request which path matches given pattern
    public void beforeMethod() {
        // do something before each request which path matches given pattern
    }

    @AfterMapping("/*")
    // full pattern is 'blogs/*', which means following method will be executed after each request which path matches given pattern
    public void afterMethod() {
        // do something after each request which path matches given pattern
    }

    @AfterAfterMapping("/*")
    // full pattern is 'blogs/*', which means following method will be executed after each after filter which path matches given pattern
    public void afterAfterMethod() {
        // do something after each after filter which path matches given pattern
        // Sparkjava documentation describes after-after filter as "finally" block
    }
}
```

```java
import com.sparkjava.context.SparkJavaContext;

public static void main(String[] args) {
    SparkJavaContext ctx = new SparkJavaContext(8080);
    ctx.createEndpoints(new BlogController());
}
```

## Method parameters
Every method which is annotated with endpoint, filter or exceptions annotation can have multiple (including zero) parameters.

### @PathParam
Used for retrieving parameter defined in path which can be parsed into different types. If parameter is required, but it
is not present in request, then exception will be thrown. If parameter can not be converted into desired type, exception
will be thrown.

```java
import com.sparkjava.context.annotation.*;

@PostMapping("blogs/:title")
public void getPathParam(@PathParam("title") String title) {
    // param title is required by default
}

@GetMapping("blogs/:number/:subNumber")
public void getPathParam(
        @PathParam("number") int number, 
        @PathParam(value = "subNumber", required = false) Long subNumber
) {
    // param number is required by default and converted into int
    // param subNumber is not required and, if present, it is converted into Long
    // if param subNumber is not present, it will have null value
}
```

### @QueryParam
Used for retrieving single parameter defined in query params which can be parsed into different types. If parameter is 
required, but it is not present in request, then exception will be thrown. If parameter can not be converted into 
desired type, exception will be thrown.

```java
import com.sparkjava.context.annotation.*;

@GetMapping("blogs")
public void getQueryParam(
        @QueryParam("title") String title,
        @QueryParam(value = "number", defaultValue = "5") int number,
        @QueryParam(value = "subNumber", required = false) String subNumber
) {
    // query param title is required by default
    // query param number has default value 5 and therefore it is implicitly not required and it is converted into int
    // query param subNumber is not required and, if not present, it will have default value of empty string
}
```

### @QueryParamValues
Http protocol allows multiple query parameters with same key. So `@QueryParamValues` is used to retrieve all query 
parameters with same key, as opposed to `@QueryParam` which will retrieve only one query param. If parameter is 
required, but it is not present in request, then exception will be thrown. If parameter can not be converted into
desired type, exception will be thrown.

```java
import com.sparkjava.context.annotation.*;

@GetMapping("blogs")
public void getQueryParamValues(
        @QueryParamValues("title") String[] title, 
        @QueryParamValues(value = "number", defaultValue = {"5", "3"}) int number, 
        @QueryParamValues(value = "subNumber", required = false) Long[] subNumber
) {
    // query param title is required by default
    // query param number has default value {5, 3} and therefore it is implicitly not required and it is converted into int[]
    // query param subNumber is not required and, if not present, it will have default value of empty array
}
```

### @RequestBody
Used for retrieving request body. If body is required, but it is not present in request, then exception will be thrown.
Request body can also be parsed into different types. More about that in [RequestBody](#request-body).

```java
import com.sparkjava.context.annotation.*;

@PutMapping("blogs/:id")
public Object getRequestBody(
        @PathParam("id") Long id,
        @RequestBody String body    
) {
    // request body is required by default
}

@PutMapping("blogs/:id")
public Object getRequestBody(
        @PathParam("id") Long id,
        @RequestBody(required = false) String body
) {
    // request body is not required and if not present, it will be empty string
}
```

### @RequestHeader
Used for retrieving value of header in request which can be parsed into different types. If header is required, but it
is not present in request, then exception will be thrown. If parameter can not be converted into desired type, exception
will be thrown.

```java
import com.sparkjava.context.annotation.*;

@GetMapping("blogs")
public void getHeader(
        @RequestHeader("User-Agent") String userAgent,
        @RequestHeader(value = "X-Total-Count", defaultValue = "5") int totalCount,
        @RequestHeader(value = "someNumber", required = false) String someNumber
) {
    // header User-Agent is required by default
    // header X-Total-Count has default value "5" and therefore it is implicitly not required and it is converted into int
    // header someNumber is not required and, if not present, it will have default value of empty string
}
```

### @Multipart
Used for retrieving value of single multipart (text or file) if request content type is `multipart/form-data`. If multipart with desired key
is required, but it is not present in request body, then exception will be thrown. **This applies to the standard
configuration of SparkJava (embedded jetty).**

```java
import com.sparkjava.context.annotation.*;
import javax.servlet.http.Part;

@PostMapping(value = "files", consumes = "multipart/form-data")
public void addFile(
        @Multipart("key1") Part file1,
        @Multipart(value = "key2", required = false) Part file2
) {
    // part file1 is required by default
    // part file2 is not required and, if not present, it will have value of null
}
```

### @MultipartValues
Used for retrieving list of values of multiple multiparts (text and file) if request content type is `multipart/form-data`. If list of 
multiparts is required to be non empty, but there are no multiparts with at least one desired key in request, then 
exception will be thrown. **This applies to the standard configuration of SparkJava 
(embedded jetty).**

```java
import com.sparkjava.context.annotation.*;
import javax.servlet.http.Part;
import java.util.ArrayList;

@PostMapping(value = "files", consumes = "multipart/form-data")
public void addFiles(
        @MultipartValues ArrayList<Part> allParts, 
        @MultipartValues({"key1", "key2", "key3"}) ArrayList<Part> ArrayList<Part> parts123, 
        @MultipartValues(value = {"key5", "key6", "key7"}, requiredNonEmpty = false) ArrayList<Part> ArrayList<Part> parts567
) {
    // part allParts is required non empty by default and it will load all multiparts (text and file)
    // part parts123 is required non empty by default and it will load multiparts (text and file) with desired keys
    // part parts567 is not required therefore if there are no multiparts (text or file) with desired keys, it will have value of empty collection
}
```

### @MultipartText
Used for retrieving value of single text (multipart whose type is text) if request content type is `multipart/form-data`.
If this annotation is used for retrieving multipart file, that file will be read as string. If text with desired key is 
required, but it is not present in request body, then exception will be thrown. **This applies to the standard 
configuration of SparkJava (embedded jetty).**

```java
import com.sparkjava.context.annotation.*;
import java.util.ArrayList;

@PostMapping(value = "texts", consumes = "multipart/form-data")
public void addText(
        @MultipartText("key1") String text1,
        @MultipartText(value = "key2", defaultValue = "some default") String text2,
        @MultipartText(value = "key3", required = false) String text3
) {
    // part text1 is required by default
    // part text2 has default value "some default" and therefore it is implicitly not required
    // part text3 is not required and, if not present, it will have default value of empty string
}
```

### @MultipartTextValues
Used for retrieving list of values of multiple texts (multiparts whose type is text) if request content type is 
`multipart/form-data`. If this annotation is used for retrieving multipart files, those files will be read as string.
If list of texts is required to be non empty, but there are no multiparts with at least one desired key in request, then
exception will be thrown. **This applies to the standard configuration of SparkJava (embedded jetty).**

```java
import com.sparkjava.context.annotation.*;
import java.util.ArrayList;

@PostMapping(value = "texts", consumes = "multipart/form-data")
public void addTexts(
        @MultipartTextValues ArrayList<String> allTexts,
        @MultipartValues({"key1", "key2", "key3"}) ArrayList<Part> ArrayList<String> texts123,
        @MultipartValues(value = {"key5", "key6", "key7"}, requiredNonEmpty = false) ArrayList<Part> ArrayList<String> texts567
) {
    // part allTexts is required non empty by default and it will load all multiparts (text and file)
    // part texts123 is required non empty by default and it will load multiparts (text and file) with desired keys
    // part texts567 is not required therefore if there are no multiparts (text or file) with desired keys, it will have value of empty collection
}
```

### Request and Response objects
SparkJava's Request and Response objects can be retrieved alongside other parameters or standalone.

```java
import com.sparkjava.context.annotation.*;
import spark.Request;
import spark.Response;

@GetMapping("blogs")
public Object getObjects(Request request, Response response) {
    //
}

@GetMapping("blogs/:id")
public Object getObjects(@PathParam("id") Long id, Request request, Response response) {
    //
}

@PutMapping("blogs/:id")
public Object getObjects(Request request) {
    //
}
```

## @ResponseStatus
This annotation is used for setting status code of http response. If there is no `@ResponseStatus` annotation, then code
200 is used for successful response and 500 for error response. Can be used on methods annotated with endpoint or 
exceptions annotations. It is ignored on methods annotated with filter annotations.

```java
import com.sparkjava.context.annotation.*;

@PostMapping("blogs")
@ResponseStatus(201)
public void addBlog(@RequestBody String body) {
    
}
```

## Request body
When retrieving request body it can be parsed into desired type and have its fields validated.

### Default parser
When starting server you can specify default content type for request and response and also default parser of request 
body. Default parser must implement `RequestTransformer` functional interface.

```java
import com.sparkjava.context.SparkJavaContext;
import com.sparkjava.context.core.RequestTransformer;

public class CustomTransformer implements RequestTransformer {
    public Object parse(String body, Class<?> modelClass) throws Exception {
        // return parsed object
    }
}

public static void main(String[] args) {
    SparkJavaContext ctx = new SparkJavaContext(8080, "application/json", new CustomTransformer());
    ctx.createEndpoints(...);
}
```

Now in every controller, request body will be parsed into desired type automatically.

```java
import com.sparkjava.context.annotation.*;

@RequestMapping("blogs")
public class BlogController {
    @PostMapping
    public void addBlog(@RequestBody CustomClass body) {
        
    }
}
```

### Explicit parser
Certain endpoints may require a different content type and parser for request body than default one. In those cases
parser needs to be set explicitly in `@RequestBody` annotation and it must also implement `RequestTransformer` 
functional interface. It is also recommended to explicitly set content type for request through `consumes` attribute of
endpoint and exception annotations.

```java
import com.sparkjava.context.annotation.*;

@RequestMapping("blogs")
public class BlogController {
    @PostMapping(consumes = "text/xml")
    public void addBlog(@RequestBody(parser = CustomTransformer.class) CustomClass body) {

    }
}
```

In this case class `CustomTransformer` needs to have no args constructor. If it doesn't, then request body should be 
retrieved as String and parsed inside method body.

```java
import com.sparkjava.context.annotation.*;

@RequestMapping("blogs")
public class BlogController {
    @PostMapping(consumes = "text/xml")
    public void addBlog(@RequestBody String body) {
        CustomTransformer parser = new CustomTransformer("some", "params");
        CustomClass parsedBody = parser.parse(body, CustomTransformer.class);
    }
}
```

### Validation
If request body is automatically parsed into desired type, it can have its fields validated using `@Valid` annotation.
To achieve this, a validator needs to be specified when starting server. Validator class must implement `Validator` 
functional interface.

```java
import com.sparkjava.context.SparkJavaContext;
import com.sparkjava.context.core.Validator;

public class CustomValidator implements Validator {
    public void validate(Object toValidate) {
        // validate object
    }
}

public static void main(String[] args) {
    SparkJavaContext ctx = new SparkJavaContext(
            8080,
            "application/json",
            new CustomRequestTransformer(),
            new CustomResponseTransformer(),
            new CustomValidator()
    );
    ctx.createEndpoints(...);
}
```

Now annotate every request body with `@Valid` annotation.

```java
import com.sparkjava.context.annotation.*;
import jakarta.validation.Valid;

@RequestMapping("blogs")
public class BlogController {
    @PostMapping
    public void addBlog(@Valid @RequestBody CustomClass body) {

    }
}
```

## Response body
Methods annotated with endpoint and exceptions annotations can set response body as their return value. If method has
void as return type, then empty string will be set as response body.

### Default serializer
When starting server you can specify default serializer for response body. Default serializer must implement 
`ResponseTransformer` functional interface.

```java
import spark.ResponseTransformer;

public class CustomSerializer implements ResponseTransformer {
    public String render(Object model) throws Exception {
        // return serialized model
    }
}

public static void main(String[] args) {
    SparkJavaContext ctx = new SparkJavaContext(
            8080, 
            "application/json", 
            new CustomTransformer(),
            new CustomSerializer()
    );
    ctx.createEndpoints(...);
}
```

Return value of every method in controller or exception handler will automatically be serialized into string and set as 
response body.

```java
import com.sparkjava.context.annotation.*;

import java.util.List;

@RequestMapping("blogs")
public class BlogController {
    @GetMapping
    public List<Blog> getBlogs() {

    }
}
```

### Explicit serializer
Certain endpoints may require a different content type and serializer for response body than default one. In those cases
serializer needs to be set explicitly in `@ResponseBody` annotation and it must also implement `ResponseTransformer` 
functional interface. It is also recommended to explicitly set content type for response through `produces` attribute of
endpoint and exception annotations.

```java
import com.sparkjava.context.annotation.*;
import java.util.List;

@RequestMapping("blogs")
public class BlogController {
    @GetMapping(produces = "text/xml")
    @ResponseBody(renderer = CustomSerializer.class)
    public List<Blog> getBlogs() {

    }
}
```

In this case class `CustomSerializer` needs to have no args constructor. If it doesn't, then object representing 
response body must be serialized inside method and returned as String in which case `@ResponseBody` is ignored.

```java
import com.sparkjava.context.annotation.*;
import java.util.List;

@RequestMapping("blogs")
public class BlogController {
    @GetMapping(produces = "text/xml")
    public String getBlogs() {
        List<Object> body = ...;
        CustomSerializer serializer = new CustomSerializer("some", "params");
        return serializer.render(body);
    }
}
```

### No serializing
If method has String as return type, it will be set as response body without any serialization. This means that default
and explicit serializer and `@ResponseBody` will be ignored.


## Error handling
Sparkjava-context offers a simple way of handling exceptions in one place. There needs to be one class annotated with
`@ExceptionHandler` which contains methods annotated with `@Exceptions`. In `@Exceptions` annotation it must be listed
which exceptions are handled by that method. Everything about [method parameters](#method-parameters), 
[response body](#response-body) and [response status](#ResponseStatus) is also applicable in exception handlers.

```java
import com.sparkjava.context.annotation.*;
import spark.Request;
import spark.Response;

@ExceptionHandler
public class GlobalExceptionHandler {
    @ResponseStatus(400)
    @Exceptions({
            IllegalArgumentException.class,
            NullPointerException.class
    })
    public ErrorBody handleBadRequest(
            RuntimeException ex,
            @PathParam(value = "id", required = false) Long id
    ) {
        // return error body object
    }

    @ResponseStatus(404)
    @ResponseBody(renderer = CustomSerializer.class)
    @Exceptions(value = BlogNotFountException.class, produces = "text/xml")
    public ErrorBody handleNotFound(RuntimeException ex) {
        // return error body object
    }

    @ResponseBody(500)
    @Exceptions(Exception.class)
    public ErrorBody handleInternalServer(Exception exception, Request request, Response response) {
        // return error body object
    }
}
```

Instance of `GlobalExceptionHandler` needs to be passed to `SparkJavaContext` instance with `registerExceptionHandler`
method.

```java
import com.sparkjava.context.SparkJavaContext;

public static void main(String[] args) {
    SparkJavaContext ctx = new SparkJavaContext(8080);
    ctx.registerExceptionHandler(new GlobalExceptionHandler());
}
```

## Sorting endpoints
As per sparkjava [documentation](http://sparkjava.com/documentation#routes), routes are matched in order they are 
defined. The first route that matches the request is invoked. In following plain sparkjava example, route 
`blogs/example` will never be invoked because it is the last one that is matched.
```java
get("blogs/:id", (reqeust, response) -> {
    // get blog with specific id
})

get("blogs/example", (reqeust, response) -> {
    // this route will never be invoked because route above will be
    // first matched and path parameter id will have value 'example'
})
```
In plain sparkjava this is solved by simply changing the order of routes. So `get("blogs/example", ...)` must be written
before `get("blogs/:id", ...)"`.

Using sparkjava-context, this issue is solved using `@MethodOrder` annotation which specifies priority of method for 
matching. If methods are not annotated with `@MethodOrder` annotation, then they are last ones to be matched in 
undefined order. It is applicable to endpoint and filter annotations in controller, but not to methods for error 
handling.

```java
import com.sparkjava.context.annotation.*;

@RequestMapping("blogs")
public class BlogController {
    @GetMapping
    @MethodOrder(120)           // #1 for matching
    public Object getAll() {
        // get all blogs
    }

    @GetMapping("/:id")
    @MethodOrder(90)            // #3 for matching
    public Object getById(...) {
        // This route will never be matched for path 'blogs/example' 
        // because it has lower priority than the one 'getExample'
    }

    @GetMapping("/example")
    @MethodOrder(110)           // #2 for matching
    public Object getExample() {
        // @MethodOrder annotation will make sure this route is matched before the 'getById'
        // because this one has higher priority
    }
    
    // These below are last 3 for matching in undefined order
    @PostMapping
    public void addBlog(...) {
        // add blog
    }

    @PutMapping("/:id")
    public Object updateBlog(...) {
        // update existing blog and return it updated
    }

    @DeleteMapping("/:id")
    public void deleteBlog(...) {
        // delete blog
    }
}
```

When creating endpoints with `createEndpoints(...)` method, sparkjava-context will log all created endpoints in same
order they are matched. For the above example log output is:

```
Created endpoint:        GET blogs                          on method BlogController.getAll()
Created endpoint:        GET blogs/example                  on method BlogController.getExample()
Created endpoint:        GET blogs/:id                      on method BlogController.getById(...)
Created endpoint:     DELETE blogs/:id                      on method BlogController.deleteBlog(...)
Created endpoint:        PUT blogs/:id                      on method BlogController.updateBlog(...)
Created endpoint:       POST blogs                          on method BlogController.addBlog(...)
```

## Security
Sparkjava-context also offers a way of retrieving authenticated user as well as protecting access to methods based on 
roles.

### @Authenticated
Used for retrieving authenticated user from request. First, it needs to be specified how to retrieve user from request.
This is done by implementing `Authenticator` functional interface. Then, it needs to be passed it to `SparkJavaContext` 
instance **before** creating endpoints with `setAuthenticator` method.

```java
import com.sparkjava.context.SparkJavaContext;
import com.sparkjava.context.core.Authenticator;

public class CustomAuthenticator implements Authenticator {
    public Object authenticate(Request request) throws Exception {
        // return object representing user
    }
}

public static void main(String[] args) {
    SparkJavaContext ctx = new SparkJavaContext(8080);
    
    // this method MUST be called before createEndpoints method
    ctx.setAuthenticator(new CustomAuthenticator());
    
    ctx.createEndpoints(...);
}
```

Now in every controller and in exception handler, simply use `@Authenticated` annotation.

```java
import com.sparkjava.context.annotation.*;

@RequestMapping("users")
public class UserController {
    @PutMapping
    public Object updateUser(@Authenticated User user) {
        // update data of authenticated user and return updates
    }
}

@ExceptionHandler
public class GlobalExceptionHandler {
    @Exceptions(Exception.class)
    public Object handle(Exception exception, @Authenticated User user) {
        //
    }
}
```

### @PreAuthorize
Used for restricting access to controller methods. Using this annotation, specify array of roles. Authenticated user 
needs to have at least one of the specified roles in order for annotated method to be invoked. To enable this, it needs 
to be specified how to retrieve users roles from request. This is done by implementing `RolesGetter` functional 
interface.

```java
import com.sparkjava.context.core.RolesGetter;

public class CustomRolesGetter implements RolesGetter {
    public Set<String> get(Request request) throws Exception {
        // return set of roles which authenticated user have
    }
}
```

Then, it needs to be passed it to `SparkJavaContext` instance **before** creating endpoints alongside with all possible role
which user can have in system. This is done by calling `setAuthorizer` method.

```java
import com.sparkjava.context.SparkJavaContext;

import java.util.Set;

public static void main(String[] args) {
    SparkJavaContext ctx = new SparkJavaContext(8080);

    // this method MUST be called before createEndpoints method
    ctx.setAuthorizer(Set.of("ADMIN", "MANAGER", "USER"), new CustomRolesGetter());

    ctx.createEndpoints(...);

}
```

Now in every controller, simply use `@PreAuthorize` annotation above method. If no roles are specified in 
`@PreAuthorize` annotation, then all possible roles are used, which essential means any authenticated user can invoke 
method. If there is no `@PreAuthorize` annotation above certain method, that means anyone can invoke it.

```java
import com.sparkjava.context.annotation.*;

@RequestMapping("blogs")
public class BlogController {
    @PostMapping
    @PreAuthorize({"ADMIN"})
    public void addBlog(@RequestBody CustomObject newBlog) {
        // only admin can access this method
    }
    
    @GetMapping
    public Object getBlogs() {
        // anyone can access this method
    }

    @GetMapping("/:id")
    public Object getBlog(@PathParam("id") Long id) {
        // anyone can access this method
    }
    
    @PutMapping("/:id")
    @PreAuthorize({"MANAGER"})
    public Object updateBlog(@PathParam("id") Long id) {
        // only manager can access this method
    }
    
    @DeleteMapping("/:id")
    @PreAuthorize
    public void deleteBlog(@PathParam("id") Long id) {
        // any authenticated user can access this method
    }
}
```
