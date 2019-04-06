import React, { Component } from 'react'
import FormElement from './FormElement'

class AddQuestion extends Component {
  constructor(props){
    super(props);
    this.state={
      answer: "",
      question: ""
    }
    this.questionChangeHandler = this.questionChangeHandler.bind(this)
    this.answerChangeHandler = this.answerChangeHandler.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
  }
  questionChangeHandler(event){
    this.setState({question: event.target.value})
  }

  answerChangeHandler(event){
    this.setState({answer: event.target.value})
  }

  handleSubmit(event) {
    event.preventDefault()
    if (this.state.answer !== "" && this.state.question !== ""){
      this.setState({error: ""})
      let payload={
        answer: this.state.answer,
        question: this.state.question
      }
      this.props.newQuestionCallback(payload)
    } else {
      this.setState({error: "both fields must be filled in."})
    }

  }

  render(){
    return(
      <form onSubmit={this.handleSubmit}>
        <FormElement
          name="question"
          value={this.state.question}
          label="Question"
          changeHandler={this.questionChangeHandler}
        />
        <FormElement
          name="answer"
          value={this.state.answer}
          label="Answer"
          changeHandler={this.answerChangeHandler}
        />
        <input type="submit" />
      </form>
    )
  }
}

export default AddQuestion
