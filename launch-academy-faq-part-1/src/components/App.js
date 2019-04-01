import React from 'react';
import QuestionContainer from './QuestionContainer';

class App extends React.Component {
  render() {
    return(
      <div>
        <h1>We're here to help</h1>
        <div><QuestionContainer data={this.props.data}/></div>
      </div>
    )
  }
}

export default App;
