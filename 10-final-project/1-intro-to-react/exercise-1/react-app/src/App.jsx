function Header(props){
  return(
    <div>
      <h1>{props.content}</h1>
    </div>
  )
}

function Content(props){
  return(
    <div>
      <p>{props.content} {props.exercise}</p>
    </div>
  )
}

function Total(props){
  return(
    <div>
      <p>{props.content} {props.exercise}</p>
    </div>
  )
}

function App() {
  const course = 'Half Stack application development'
  const part1 = 'Fundamentals of React'
  const exercises1 = 10
  const part2 = 'Using props to pass data'
  const exercises2 = 7
  const part3 = 'State of a component'
  const exercises3 = 14

  return (
     <div>
      <Header content={course}/>
      <Content content={part1} exercise={exercises1}/>
      <Content content={part2} exercise={exercises2}/>
      <Content content={part3} exercise={exercises3}/>
      <Total content='Number of exercises' exercise={exercises1+exercises2+exercises3}/>
    </div>
  )
}

export default App
