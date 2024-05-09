# Introduction to React

## Create a webapp

npm create vite@latest part1 --template react

## Install dependencies

cd part1
npm install

## Run app

npm run dev

## JSX

Although, JSX looks like HTML. Under the hood, JSX returned by React components is compiled
into JavaScript, using Babel.

## Components

1. First letter of React component names must be capitalized.
2. Content of a React component (usually) needs to contain one root element.

```jsx
const Hello = () => {
  return(
    <div>
      <p>Hello, World</p>
    </div>
  )
}

<Hello /> //invoking Hello
```

## Components passing data

```jsx
const Hello = (props) => {
  console.log(props)
  return (
    <div>
      <p>
        Hello {props.name}, you are {props.age} years old
      </p>
    </div>
  )
}

const App = () => {
  const name = 'Peter'
  const age = 10

  return (
    <div>
      <h1>Greetings</h1>
      <Hello name='Maya' age={26 + 10} />
      <Hello name={name} age={age} />
    </div>
  )
}

export default App
```
