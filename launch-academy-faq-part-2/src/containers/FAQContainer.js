import React from 'react';
import Question from '../components/Question';
import AddQuestion from '../components/AddQuestion'

class FAQContainer extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      selectedQuestion: null,
      questions: []
    }
    this.toggleQuestionSelect = this.toggleQuestionSelect.bind(this)
    this.newQuestionCallback = this.newQuestionCallback.bind(this)
  }

  newQuestionCallback(payload){
    let id = this.state.questions.length + 1
    payload.id = id
    this.setState({questions: this.state.questions.concat(payload)})
  }

  getQuestionsFromServer() {
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

  componentDidMount() {
    this.getQuestionsFromServer()
  }


  makeNewQuestion() {
    let data={
      question: "What is Launch Academy?",
      answer: "Launch Academy is a 10-week, immersive bootcamp taking eager learners with little to no coding experience and giving them the tools to add value as a junior contributor to a software engineering team"
    }

    fetch('http://localhost:4567/api/v1/questions',{
      method: 'post',
      body: JSON.stringify(data)
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
    })
    .catch(error => console.error( `Error in fetch: ${error.message}` ));
  }

  toggleQuestionSelect(id) {
    if (id === this.state.selectedQuestion) {
      this.setState({ selectedQuestion: null})
    } else {
      this.setState({ selectedQuestion: id })
    }
  }

  render() {
    let questions = this.state.questions.map(question => {
      let selected;
      if (this.state.selectedQuestion === question.id) {
        selected = true
      }

      let handleClick = () => { this.toggleQuestionSelect(question.id) }
      // this.makeNewQuestion()
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
        <AddQuestion newQuestionCallback={this.newQuestionCallback}/>
      </div>
    )
  }
}

export default FAQContainer;
