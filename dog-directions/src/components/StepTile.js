import React from 'react';

const StepTile = props => {

  let setClassName=()=> {
    if (props.id === props.selectedId){
      return ("selected")
    } else {
      return ""
    }
  }

  return(
    <li className={setClassName()} onClick={props.handleClick}>{props.step}</li>
  )
}

export default StepTile;
