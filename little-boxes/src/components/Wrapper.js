import React from 'react';
import Picture from './Picture'
import Numbers from './Numbers'
import List from './List'
const Wrapper = props => {
  return (
    <div className='box wrapper'>
      <h1>{props.wrapperTitle}</h1>
      <p>
        {props.wrapperCopy}
      </p>
      <Picture imgTitle={props.imgTitle} imgUrl={props.imgUrl}/>
      <List array={props.array} listTitle={props.listTitle}/>
      <Numbers date={props.date} random={props.random}/>
    </div>
  )
}

export default Wrapper;
