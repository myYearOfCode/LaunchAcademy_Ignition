import React from 'react'

const FormElement = (props) => {

  return (
    <div>
        <label name={props.name}>{props.label}</label>
        <input
          type="text"
          id={props.name}
          name={props.name}
          onChange={props.eventChangeHandler}
        />
    </div>
  )
}

export default FormElement
