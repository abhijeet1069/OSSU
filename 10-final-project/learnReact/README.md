# Learn React

## React ES6

### ES6 classes

```html

<!DOCTYPE html>
<html>

<body>
  
<script>
class Car {
  constructor(name) {
    this.brand = name;
  }

  present() {
    return 'I have a ' + this.brand;
  }
}

class Model extends Car {
  constructor(name, mod) {
    super(name);
    this.model = mod;
  }  
  show() {
    return this.present() + ', it is a ' + this.model
  }
}

const mycar = new Model("Ford", "Mustang");
document.write(mycar.show()); //OP - I have a Ford, it is a Mustang
</script>

</body>
</html>

```

### ES6 arrow functions

```html
<!DOCTYPE html>
<html>

<body>

<p id="demo"></p>

<script>
hello = val => "Hello " + val; //function description

document.getElementById("demo").innerHTML = hello("World"); //function call, OP - Hello World 
</script>

</body>
</html>
```

### ES6 Variables

If you use var outside of a function, it belongs to the global scope.
If you use var inside of a function, it belongs to that function.
If you use var inside of a block, i.e. a for loop, the variable is still available outside of that block.

var has a function scope, not a block scope.
let has a block scope.

const has a block scope.
The keyword const is a bit misleading.

It does not define a constant value. It defines a constant reference to a value.

Because of this you can NOT:
Reassign a constant value
Reassign a constant array
Reassign a constant object

But you CAN:
Change the elements of constant array
Change the properties of constant object

### Array Methods

The .map() method allows you to run a function on each item in the array, returning a new array as the result.
