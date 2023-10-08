# Tools used:

## IDE
    Notepad
    NetBeans
    ->Eclipse EE (Not working for Mac M1, Added plugins in Eclipse SE)
    Intellij IDEA

## Build Tools
    Ant (Not only build tool, but also scripting tool)
    ->Maven (Not as extensible as Ant)
    Gradle (More extensible than Maven, used more in Android)
    Eclipse (Inbuilt in Eclipse. Configure build path)

## UI
    HTML/XHTML - Good for markup, but not dynamic
    Servlet - Java program that writes HTML but, hard to update HTML
    JSP - Mixes UI and code
    ->JSF - HTML-ish page with tag extensions. Works well with JavaBeans/POJO

## Object Instantiation
    ->Spring - Annotation based or XML based, good integration with transaction framework, AOP
    CDI - J2EE implementation of dependency injection.

    PolyMorphism - variable type tells you what you are allowed to call; object types tells you what
                        will happen.
    
## Controller
    HardCoded
    Struts/Struts 2
    ->JSF navigation
    Spring web MVC

## Database
    JDBC
    ->Hibernate+MySQL
    iBatis/MyBatis
    J2EE

# Microservices 
    Designing software applications as suites of independently deployable services.
        - Independently deployable and scalable
        - Different languages, different storage mechanism, different architecture
        - Join data using business keys

# Service Mesh
Reverse Proxy
    - Communicate with other service instances
    - Service discovery
    - Load balancing
    - Authorization and authentication
    - Secure communication

# A history of Object Instantiation and Spring

On the first day...
    Dog dog = new Dog();
    variableType variableName = new objectType;

# Polymorphism
    variableType = What methods are you allowed to call;
    objectType = What happens when you call those methods.

    objectType can be any subclass of that superclass.
        Mammal mammal = new Dog();

    variableType can be interface.
    IPet pet = new Dog()

# objectType can be configured in Spring XML
## Old version used XML
    IPet pet;
    <bean id="pet" class="com.plantplaces.Dog">

## Newer version use component-scan
    Match object to variable type using naming conventions and annotations.
    No need for XML file.

## Spring Boot - Latest version
    Default all configuration
    No need for traditional configuration files(web.xml, applicationContext.xml)
    But, you can still add them if you have special config requirements.

# Why Spring Boot?
- Simplicity
    - Automatic configuration: manually configure only when needed
    - No need for web.xml, applicationContext.xml unless desired

- @Configuration preferred over XML

- Directly embed application server (Tomcat)

Spring : Loosely coupled components
Microservices : Loosely coupled services