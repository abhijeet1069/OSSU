# Learn React

## React ES6

### ES6 classes

```html

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

```

### ES6 arrow functions

```html

<p id="demo"></p>

<script>
hello = val => "Hello " + val; //function description
document.getElementById("demo").innerHTML = hello("World"); //function call, OP - Hello World 
</script>

```

### ES6 Variables

var has a function scope, not a block scope.
let has a block scope.
const has a block scope.

Note : const does not define a constant value. It defines a constant reference to a value.

### Array Methods

The .map() method allows you to run a function on each item in the array, returning a new array as the result.

```html
<script>  
  const arr = ['To', 'be', 'or', 'not', 'to', 'be'];
  const arr1 = arr.map((item) => (item+item));
  
  //Output : ['ToTo', 'bebe', 'oror', 'notnot', 'toto', 'bebe']
  console.log(arr1);
</script>
```

### ES6 destructuring

```html
//destructuring function return value
  <script>
      
      function calculate(a,b){
        const add = a+b;
        const sub = a-b;
        const mul = a*b;
        const div = a/b;

        return [add,sub,mul,div];
      }

      const[add,sub,mul,div] = calculate(4,6);

      //OP - 10
      console.log(add);

  </script>
```

```html
//destructuring arrays

    <script>
      
      const vehicles = ['toyota','ford','jeep'];
      const[car,,suv] = vehicles;
      
      //OP - jeep
      console.log(suv);

    </script>

```

```html
//destructuring objects
   <script>
    const vehicleOne = {
  brand: 'Ford',
  model: 'Mustang',
  type: 'car',
  year: 2021, 
  color: 'red',
  registration: {
    city: 'Houston',
    state: 'Texas',
    country: 'USA'
  }
}

myVehicle(vehicleOne)

function myVehicle({ model, registration: { state } }) {
  const message = 'My ' + model + ' is registered in ' + state + '.';

  //OP - My mustang is registered in Texas
  console.log(message);
}

    </script>
```

### ES6 spread operator

The spread operator ... allows us to quickly copy all or part of an existing array or object into another array or object.

```html
// spread objects
<script>
const myVehicle = {
brand: 'Ford',
model: 'Mustang',
color: 'red'
}

const updateMyVehicle = {
type: 'car',
year: 2021, 
color: 'yellow'
}

const myUpdatedVehicle = {...myVehicle, ...updateMyVehicle}

//{brand: 'Ford', model: 'Mustang', color: 'yellow', type: 'car', year: 2021}
console.log(myUpdatedVehicle);
</script>
```

```html
<script>

//array objects
const numbers = [1,2,3,4,5,6];
const[one,two,...rest] = numbers;

//OP - [3,4,5,6]
console.log(rest);

</script>
```

### ES6 modules

JavaScript modules allow you to break up code into separate files.

```html
//person.js
const name = "Brad Pitt";
const age = 60;
export {name,age};
```

```html
<script type="module">
  import {name,age} from './person.js';
  console.log(name,age);
</script>
```
