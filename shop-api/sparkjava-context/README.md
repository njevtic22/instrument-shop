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
Every method which is annotated with endpoint or filter annotation can have multiple (including zero) parameters.

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
TODO

## Request body
TODO

## Response body
TODO

## ErrorHandling
TODO

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
undefined order.

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
TODO