import React from 'react';

import Question from '../components/Question';
import InputElement from '../components/InputElement'

class FAQContainer extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      selectedQuestion: null,
      questions: [],
      answerInput: "",
      questionInput: ""
    }

    this.toggleQuestionSelect = this.toggleQuestionSelect.bind(this)
    this.questionChangeHandler = this.questionChangeHandler.bind(this)
    this.answerChangeHandler = this.answerChangeHandler.bind(this)
    this.submitHandler = this.submitHandler.bind(this)
    this.getQuestionsFromServer = this.getQuestionsFromServer.bind(this)
  }

  getQuestionsFromServer(){
    fetch('http://localhost:4567/api/v1/questions')
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
      this.setState({questions: body})
    })
    .catch(error => console.error( `Error in fetch: ${error.message}` ));
  }

  componentDidMount(){
    this.getQuestionsFromServer()
  }

  toggleQuestionSelect(id) {
    if (id === this.state.selectedQuestion) {
      this.setState({ selectedQuestion: null})
    } else {
      this.setState({ selectedQuestion: id })
    }
  }

  questionChangeHandler(event) {
    this.setState({questionInput: event.target.value})
  }

  answerChangeHandler(event) {
    this.setState({answerInput: event.target.value})
  }

  blankFields() {
    this.setState({ answerInput: "", questionInput: ""})
  }

  submitHandler(event) {
    event.preventDefault()
    if (this.state.answerInput !== "" && this.state.questionInput !== "") {
      this.setState({error: ''})
      let payload = {
        answer:  this.state.answerInput,
        question: this.state.questionInput
      }

      fetch(' http://localhost:4567/api/v1/questions', {
        method: 'post',
        body: JSON.stringify(payload)
      })
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
        this.getQuestionsFromServer()
        this.blankFields()
      })
      .catch(error => console.error( `Error in fetch: ${error.message}` ));
    } else {
      this.setState({error: 'no fields can be left blank.'})
    }
  }

  render() {
    let questions = this.state.questions.map(question => {
      let selected;
      if (this.state.selectedQuestion === question.id) {
        selected = true
      }

      let handleClick = () => { this.toggleQuestionSelect(question.id) }

      return(
        <Question
          key={question.id}
          question={question.question}
          answer={question.answer}
          selected={selected}
          handleClick={handleClick}
        />
      )
    })

    return(
      <div className='page'>
        <h1>We Are Here To Help</h1>
        <div className='question-list'>
          {questions}
        </div>
        <form onSubmit={this.submitHandler}>
          <InputElement name="question" value={this.state.questionInput} onChange={this.questionChangeHandler}/>
          <InputElement name="answer" value={this.state.answerInput} onChange={this.answerChangeHandler}/>
          <h2 className='error'>{this.state.error}</h2>
          <input type="submit" />
        </form>
      </div>
    )
  }
}

export default FAQContainer;
