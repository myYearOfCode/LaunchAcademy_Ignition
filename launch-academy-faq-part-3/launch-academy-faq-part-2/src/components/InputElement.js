import React from 'react'

const InputElement = props => {

  return(
    <input type="text"
    name={props.name}
    value={props.value}
    onChange={props.onChange}
    />
  )
}

export default InputElement
