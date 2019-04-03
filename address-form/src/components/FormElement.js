import React from 'react'

const FormElement = (props) => {
  return(
    <div>
      <label htmlFor={props.name}>{props.label}</label>
      <input type="text" id={props.id} name={props.name} onChange={props.onChange}/>
    </div>
  )
}

export default FormElement
