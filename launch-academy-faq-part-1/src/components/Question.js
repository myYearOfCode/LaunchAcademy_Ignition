import React, { Component } from 'react'

class Question extends Component {
  constructor(props){
    super(props);
    this.state = {
      question: this.props.data.question,
      answer: this.props.data.answer,
      id: this.props.data.id,
      setSelected: this.props.setSelected
    }
  }


  showAnswer() {
    // debugger
    if (this.props.selected === this.state.id){
      return(<div className="answer">{this.state.answer}</div>)
      //add class
    } else {
      return;
      // remove class
    }
  }

  setSelectedClass() {
    if (this.props.selected === this.state.id){
      return("question_button selected")
    } else {
      return("question_button");
    }
  }

  setSelectedIcon() {
    if (this.props.selected === this.state.id){
      return("-")
    } else {
      return("+");
    }
  }

  render() {

    // debugger
    return(
      <div className="question_selected" key={this.state.id} >
        <div className="button_holder">
          <div className={this.setSelectedClass()} onClick={this.state.setSelected}>{this.setSelectedIcon()}</div>
          <div className="question">{this.state.question}</div>
        </div>
        <div className="answer">
          {this.showAnswer()}
        </div>
        <hr />
      </div>
    )
  }
}

export default Question;
