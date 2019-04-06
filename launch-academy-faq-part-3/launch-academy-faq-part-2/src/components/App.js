import React from 'react'
import { Router, Route, browserHistory } from 'react-router'

import FAQContainer from '../containers/FAQContainer'
import LauncherList from '../components/LauncherList'
import LauncherShow from '../components/LauncherShow'

const App = props => {

  return(
    <Router history={ browserHistory }>
      <Route
        path='/'
        component={FAQContainer}
      />
      <Route
        path='/launchers'
        component={LauncherList}
      />
      <Route
        path='/launcher/:id'
        component={LauncherShow}
      />
    </Router>
  )
}

export default App
