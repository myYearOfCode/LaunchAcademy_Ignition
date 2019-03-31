import React from 'react'

const Box = props => {
  let boxClass = `box ${props.boxClass}`

  let paragraph
  if (props.paragraph) {
    paragraph = <p>{props.paragraph}</p>
  }

  let photo
  if (props.imgUrl) {
    photo = <div><h1>{props.imgTitle}</h1> <img alt='Clever EEs' src={props.imgUrl}/></div>
  }

  let numbers
  if (props.random) {
    numbers = <div className='box numbers'>
      <h1>Today's Date and Random Number</h1>
      <p>
        Today's date is
        <strong>&nbsp;{props.date}&nbsp;</strong>
        and
        <em>&nbsp;{props.random}&nbsp;</em>
        is a random number.
      </p>
    </div>
  }

  let list
  if (props.listTitle) {
    props.array.map(word => {return <li> {word} </li>})
    let makeList =
      <div className='box list'>
        <h1>{props.listTitle}</h1>
        <ul>
          {makeList}
        </ul>
      </div>
  }

  return (
    <div className={boxClass}>
      <h1>{props.header}</h1>
      {paragraph}
      {photo}
      {numbers}
      {list}
    </div>
  )
}

export default Box;
