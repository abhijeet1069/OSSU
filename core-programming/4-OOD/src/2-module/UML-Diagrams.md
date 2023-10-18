# UML class diagrams

ClassName
Properties or Attributes
Operations or Methods

## Implementing Encapsulation

Access Modifier
    + : public
    - : private

## Implementing Decomposition

There are three types of relationships found in decompostion

* Association
    If one class is destroyed the other can continue to exist.

    ```java
    //Here student can exist independent of the food
    public class Student{
        public void play(Sport sport){

        }
    }
    ```

* Aggregation
    has-a relationship where parts can belong to wholes, they can exist independently.

* Composition
<img src="../../res/2-module/aggregation-uml.png" alt="drawing" width="200"/>