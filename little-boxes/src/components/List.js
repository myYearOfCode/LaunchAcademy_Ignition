import React from 'react';



const List = props => {
  let makeList = props.array.map(word => {return <li> {word} </li>})

  let makeList2 = (props) => {
    return props.array.map(word => {return <li> {word} </li>}
  )}

  return (
    <div className='box list'>
      <h1>{props.listTitle}</h1>
      <ul>
        {makeList}
        {makeList2(props)}
      </ul>
    </div>
  )
}
// <MakeList array={array}/>

export default List;

// ["Asteroids","Comets","Moon","Planets","Stars","Sun"]
