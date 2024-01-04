# JavaScript

## Variables

The variables that are defined with var statement have function scope.

```javascript
for(var i = 0; i < 10; i++){
        console.log(i+1);
    }

//Output = 10
document.getElementById("demo").innerHTML = i;
```

The variables that are defined with let statement have block scope.

```javascript
for(let i = 0; i < 10; i++){
        console.log(i+1);
    }
    
//Output = Uncaught ReferenceError : i is not defined
document.getElementById("demo").innerHTML = i;
```

## Arrays

```javascript
    
const t = [1,-1,3];
//t = [12,34,5] //Error : Uncaught type error
t.push(5);

//Output = 1 -1 3 5
for(let i = 0; i < t.length; i++){
    console.log(t[i]);
}
```
