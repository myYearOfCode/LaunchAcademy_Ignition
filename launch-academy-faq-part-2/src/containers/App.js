import React, { Component } from 'react'
import { Router, Route, Link, IndexRoute, browserHistory } from 'react-router'

import LauncherList from '../components/LauncherList'
import LauncherSingle from '../components/LauncherSingle'
import FAQContainer from './FAQContainer'

class App extends Component {
  constructor(props){
    super(props)
    this.state = {

    }
  }

  render(){
    return (
      <Router history={browserHistory}>
        <Route
          path='/launchers'
          component={LauncherList}
        />
        <Route
          path='/launchers/:id'
          component={LauncherSingle}
        />
        <Route
          path='/'
          component={FAQContainer}
        />
      </Router>
    )
  }
}

export default App
