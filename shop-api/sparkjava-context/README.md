# sparkjava-context
Sparkjava context is library for sparkjava web framework which allows creating endpoints with annotations instead of 
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

After that create an object of `SparkJavaContext` class and pass the port on which application will run. Then pass 
array of controllers to `createEndpoints` method.

```java
import com.sparkjava.context.SparkJavaContext;

public static void main(String[] args) {
    SparkJavaContext ctx = new SparkJavaContext(8080);
    ctx.createEndpoints(new HelloController());
}
```

Now the server is started and you can send GET request to `http://localhost:8080/hello/world` and receive response 
`Hello World!`
