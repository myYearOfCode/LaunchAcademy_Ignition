import React, { Component } from 'react'
import FormElement from '../components/FormElement'

class FormContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      firstName: null,
      lastName: null,
      address: null,
      city: null,
      state: null,
      zipCode: null,
      phoneNumber: null,
      email: null
    }
    this.handleFormSubmit = this.handleFormSubmit.bind(this)
    this.handleFormEntry = this.handleFormEntry.bind(this)
  }

  handleFormSubmit(event) {
    event.preventDefault()
    console.log(this.state)
  }

  handleFormEntry(event, stateName) {
    this.setState({[stateName]: event.target.value })
  }

  render() {
    let data = [
      {id:"first-name", name:"firstName", label:"First Name:"},
      {id:"last-name", name:"lastName", label:"Last Name:"},
      {label:"Address:", id:"address", name:"address" },
      {label:"City:", id:"city", name:"city"},
      {label:"State:", id:"state", name:"state"},
      {label:"Zip Code:", id:"zip-code", name:"zipCode"},
      {label:"Phone Number:", id:"phone-number", name:"phoneNumber"},
      {label:"Email:", id:"email", name:"email"}
    ]

    let formElements = data.map(field => {
      let exampleClosure = (event) => {
        this.handleFormEntry(event, field.name)
      }

      return <FormElement
          id={field.id}
          key={field.id}
          name={field.name}
          label={field.label}
          onChange={exampleClosure}
        />
    })

    return (
      <form
        className="callout"
        id="shipping-address-form"
        onSubmit={this.handleFormSubmit}
      >
        <h1>Shipping Address</h1>
        {formElements}
        <input type="submit" className="button" value="Submit "/>
      </form>
    )
  }
}

export default FormContainer
