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
