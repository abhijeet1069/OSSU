
# Week 3

## Recap

Design principles in OOPS

* Abstraction
* Encapsulation
* Decomposition
* Generalization

## Complexity Metrics

Limitation : An average person can only hold seven things in short-term memory.
So, we need need to model the complexity of our program. For that we will use below metrics

### Coupling

Focuses on complexity between modules and other modules.
When evaluating coupling of a module, we need to consider

* Degree
    Degree is the number of connections between the module and others. With coupling, you want to keep
    the degree small.

* Ease
    Ease is how obvious are the connections between the module and others. With coupling, you want to be easy
    to make connections without needing to understand the implmentations of other modules.

* Flexibility
    Flexibility is how interchangeable the other modules are for this module. With coupling, you want the other modules
    easily replacable for something better in the future.

### Cohesion

Focuses on complexity within a module. It represents the clarity of the responsibilities of a module.
You want to have high cohesion, if you find your module doing more than one thing, then its probably time to split
the module.

```java
/*
a) Cohesion - Sensor class has low cohesion, since it has two purposes and therefore is unclear.
b) Coupling - A user of get method will have to open up Sensor to see how it works. That's not loose coupling.
*/
class Sensor{
    public int get(int controlFlag){
        switch(controlFlag){
            case 0:
                return this.humidity;
                break;
            case 1:
                return this.temperature;
                break;
            default:
                throw new UnknownControlFlagException();
        }
    }
}

//Better Design

interface ISensor{
    public int get(int);
}

class HumiditySensor implements ISensor{}
class TemperatureSensor implements ISensor{}
```
