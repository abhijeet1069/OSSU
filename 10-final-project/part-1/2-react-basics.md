# React

## Create React app

Vite is a build tool we are using here for JavaScript.

//alternative of create react app

npm create vite@latest react-app -- --template react
cd react-app
npm install

## Run React app

//alternative of npm start

npm run dev

## React Component

Components are the core comcepts of React. They are the foundation upon which we build user interfaces(UI).
The layout of React components is mostly written using JSX. Although, JSX looks like HTML, under the hood
JSX returned by the React component is compiled into JavaScript.

```html
<!--index.html-->
<body>
    <div id="root"></div>
    <script type="module" src="/src/main.jsx"></script>
  </body>
```

```jsx
//main.jsx
import React from 'react'
import ReactDOM from 'react-dom/client'
import App from './App.jsx'
import './index.css'

ReactDOM.createRoot(document.getElementById('root')).render(<App />)
```

```jsx
//App.jsx
import './App.css'

function App() {
  return (
    <div>
      <h1>Hello, World</h1>
    </div>
  )
}

export default App
```

## Props

It is possible to pass data to components using props.

```jsx
import './App.css'

const Hello = (props) => {
  console.log(props)
  return(
    <div>
      <p>
        Hello {props.name}, you are {props.age} years old!!
      </p>
    </div>
  )
}

function App() {

  const name='Peter'
  const age=10

  return (
    <div>
      <h1>Greetings</h1>
      <Hello name='Maya' age={26+10}/>
      <Hello name={name} age={age}/>
    </div>
  )
}

export default App

```

## Notes

1. First letter of React component names must be capitalized.
2. Fragment, <>...</> syntax, lets you group elements without a wrapper node.
3. In React, th individial things rendered in braces must be primtive values, such as numbers or strings.
