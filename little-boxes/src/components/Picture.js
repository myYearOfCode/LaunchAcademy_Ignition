import React from 'react';

const Picture = props => {
  return (
    <div className='box picture'>
      <h1>{props.imgTitle}</h1>
      <img alt='Clever EEs' src={props.imgUrl}/>
    </div>
  )
}

export default Picture;
