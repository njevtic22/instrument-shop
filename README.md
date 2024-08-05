## [SparkJava context is here](https://github.com/njevtic22/musical-instrument-shop/tree/main/shop-api/sparkjava-context)

# Musical Instrument Shop
## Description
Web application for managing a shop of musical instruments. There are 4 possible user roles: manager, salesman, customer and anonymous user. Anonymous user can only view available instrument, login and register. Manager can view available instruments, all bought instruments, instrument types and receipts. Salesman can add, view, edit and delete available instruments and instrument types. Customer can view available instruments and all his bought instruments. Customer can also add instrument to cart and therefore buy all instruments in cart.

## Test data
Database has test data to work with. Credentials for users are:

username: [role][1-10]

password: #Intel1#

### How to run
First install sparkjava-context maven project in local repository and then build and run sparkjava-shop with maven using command `mvn exec:java`. Install dependencies for vue with `npm install` and then run vue application with `npm run dev`.

### Technologies
- Java 19 for sparkjava-shop, Java 8 for sparkjava-context
- [SparkJava v2.9.4](http://sparkjava.com/) backend framework
- [SparkJava-context](https://github.com/njevtic22/musical-instrument-shop/tree/main/shop-api/sparkjava-context)
- [Vue v3.4.0](https://vuejs.org/) frontend framework
- [Postgresql database](https://www.postgresql.org/)
- [Hibernate orm v6.5.0.Final](https://hibernate.org/orm/releases/6.5/)
- [Jakarta validation v3.0.2](https://beanvalidation.org/3.0/)
- [Hibernate validator v8.0.1.Final](https://hibernate.org/validator/releases/8.0/)
- [Passay library v1.6.4](https://www.passay.org/) for password validation
- [Gson v2.10.1](https://github.com/google/gson)
- [Guice v7.0.0](https://github.com/google/guice/wiki/Guice700)
- [Spring security crypto v6.1.5](https://docs.spring.io/spring-security/reference/features/integrations/cryptography.html#spring-security-crypto-passwordencoders) for hashing passwords
- [jjwt v0.11.5](https://github.com/jwtk/jjwt)
- [Cloudinary v1.35.0](https://github.com/cloudinary/cloudinary_java)

### Author
* Nemanja Jevtić [GitHub](https://github.com/njevtic22)
