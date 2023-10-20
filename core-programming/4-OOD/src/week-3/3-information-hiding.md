# Information Hiding

Information hiding allows modules of our system to give others the minimum amount of information
needed to use them correctly and "hide" everything else.

We use encapsulation to bundle attributes and behaviors into their appropriate class and expose an interface
to provide access.

## Access Modifier

We implement encapsulation via access modifiers:
Access modifiers change which classes are able to access attributes and behaviors. They also determine
which attributes and behaviors a superclass will share with its subclasses.

There are four different levels of access in JAVA

* Public
    Other classes can retrieve and modify the attributes.

* Protected
    Access level of a protected modifier is within the package and outside the package through child class.

* Default
    Access level of default modifier is only within the package.

* Private
    Access level is restrcited only to the containing class.
