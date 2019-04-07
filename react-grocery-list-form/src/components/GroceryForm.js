import React, { Component } from 'react'
import TextField from './TextField'

class GroceryForm extends Component {
  constructor(props) {
    super(props)
  }

  render() {
    return (
      <form onSubmit={this.props.addGrocery}>
        <TextField
          name='grocery'
          placeholder='name of grocery'
        />
        <input type="submit" value="Add to List" />
      </form>
    )
  }
}

export default GroceryForm;
