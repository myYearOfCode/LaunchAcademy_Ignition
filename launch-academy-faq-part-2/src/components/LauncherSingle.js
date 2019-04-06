import React, { Component } from 'react';


class LauncherSingle extends Component {
  constructor(props){
    super(props)
    this.state = {
      selectedLauncher: ""
    }
  }

  componentDidMount(){
    fetch(`http://localhost:4567/api/v1/launcher/${this.props.params.id}`)
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
      this.setState({selectedLauncher: body})
    })
    .catch(error => console.error( `Error in fetch: ${error.message}` ));
  }

  render(){
    return(
      <div>
        <h1>{this.state.selectedLauncher.name}</h1>
        <p>{this.state.selectedLauncher.bio}</p>
      </div>
    )
  }
}

export default LauncherSingle;
