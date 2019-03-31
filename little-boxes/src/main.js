import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';

import style from './styles/app.scss'

import Wrapper from './components/Wrapper';
import Picture from './components/Picture';
import List from './components/List';
import Numbers from './components/Numbers';
import Box from './components/Box';

let listTitle = "Here Is a List"
// let listElements = ["Asteroids","Comets","Moon","Planets","Stars","Sun"]
let date = (new Date).toString()
let random = parseInt(Math.random() * 100)
let imgTitle="Look at This Picture"
let wrapperTitle = "I Am the Wrapper"
let wrapperCopy = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed ullamcorper nibh, id efficitur eros. Suspendisse ultricies est ut mi volutpat, quis faucibus sem malesuada. Pellentesque pellentesque ex at posuere viverra. Nunc maximus massa nec lectus malesuada sodales. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eget malesuada tortor."
let imgUrl = 'https://s3.amazonaws.com/horizon-production/images/react-clever-ees.png'
let wrapperParagraph = 'Lorem ipsum dolor sit amet...'
let array = ["Asteroids","Comets","Moon","Planets","Stars","Sun"]

ReactDOM.render(
  <div>
    <Box
      boxClass='wrapper'
      header='I Am the Wrapper'
      paragraph={wrapperParagraph}
    />
    <Box
      boxClass='picture'
      imgUrl={imgUrl}
      imgTitle={imgTitle}
    />

    <Box
      boxClass='numbers'
      date={date}
      random={random}
    />

    <Box
      boxClass='list'
      array={array}
    />

    <Wrapper
      wrapperTitle={wrapperTitle}
      wrapperCopy={wrapperCopy}
      imgTitle={imgTitle}
      imgUrl={imgUrl}
      listTitle={listTitle}
      date={date}
      random={random}
      array={array}
    />

  </div>,
  document.getElementById('app')
);
