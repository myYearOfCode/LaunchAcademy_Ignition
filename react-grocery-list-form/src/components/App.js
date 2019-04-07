import React, { Component } from 'react'
import GroceryForm from './GroceryForm'
import GroceryList from './GroceryList'

class App extends Component {
  constructor(props) {
    super(props)
    this.state = {
      groceries: [
        { id: 1, name: "Oranges" },
        { id: 2, name: "Bananas" },
        { id: 3, name: "Bread" }
      ]
    }
    this.addGrocery = this.addGrocery.bind(this)
    this.handleButtonClick = this.handleButtonClick.bind(this)
  }

  addGrocery(groceryName) {
    alert('Form was submitted')
    let id = this.state.groceries.length+1
    let groceries = this.state.groceries
    groceries.push({id:id, name:groceryName.value})
    debugger
    this.setState({groceries: groceries})
  }

  handleButtonClick(event) {
    alert('Button was clicked')
  }

  render() {
    return(
      <div>
        <h1>Grocery List React</h1>
        <GroceryForm addGrocery={this.addGrocery} />
        <GroceryList
          groceries={this.state.groceries}
          handleButtonClick={this.handleButtonClick}
        />
      </div>
    )
  }
}

export default App
