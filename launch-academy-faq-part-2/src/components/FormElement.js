import React, { Component } from 'react'

const FormElement = props => {
  return(
    <div>
      <label htmlFor={props.label}>{props.name}</label>
      <input type="text" id={props.label} name={props.value} value={props.value} onChange={props.changeHandler} />
    </div>
  )
}

export default FormElement
