import React, { Component } from 'react';
import Question from './Question'

class QuestionContainer extends Component {
  constructor(props){
    super(props);
    this.state = {
      data: this.props.data,
      selected: null
    }
    this.setSelected = this.setSelected.bind(this);
  }

  setSelected(id){
    if ( this.state.selected === id ){
    this.setState({selected: null})
    } else {
      this.setState({selected: id})
    }
  }

  render () {



    let questionArray = this.state.data.map(question => {
        let callbackFunctionWrapper = id => {
          return this.setSelected(question.id)
        }
        return <Question
          data={question}
          selected={this.state.selected}
          setSelected={callbackFunctionWrapper}
        />
    })

    return(
      <div className="container">
        {questionArray}
      </div>
    )
  }
}
export default QuestionContainer;
