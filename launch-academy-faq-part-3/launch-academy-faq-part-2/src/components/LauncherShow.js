import React, { Component } from 'react'

class LauncherShow extends Component {
  constructor (props){
    super(props);
    this.state = {
      name: "",
      bio: ""
    }
  }
  //fetch call for person
  //store it in state
  //show it on page
  componentDidMount() {
    fetch(`/api/v1/launcher/${this.props.params.id}`)
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText}) ,`
        let error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
      this.setState({ name: body.name, bio: body.bio})
    })
    .catch(error => console.error( `Error in fetch: ${error.message}` ));
  }

  render(){
    return (
      <div>
        <h1>{this.state.name}</h1>
        <p>{this.state.bio}</p>
      </div>
    )
  }
}

export default LauncherShow
