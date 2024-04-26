# sparkjava-context
Sparkjava-context is library for [sparkjava](http://sparkjava.com/) web framework which allows creating endpoints with annotations instead of 
invoking sparkjava static methods. It makes it easier to obtain path parameters, query parameters and other 
information from _Request_ object, as well as handling exceptions and protecting access to methods based on roles.

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
