import React from 'react';

const Popup2 = props => {
  let handleExit = () => {
    confirm("Are you sure you don't want to see Tay Sway?")
  }

  let onSubmitHandler = (event) => {
    event.preventDefault()
    console.log('Form Submitted')
  }

return(
    <div id="popup" >
      <div className="x_out">
        <i className="fas fa-times" onClick={handleExit}></i>
      </div>
      <h1>You have won tickets to see {props.artistName}!!</h1>
      <p>Please enter your email so we can send you the tickets.</p>
      <form onSubmit={onSubmitHandler}>
          <input type="text" id="email" value="Your email here"/>
          <input type="submit" id="submit" value="CLAIM YOUR PRIZE"/>
      </form>
    </div>
  )
}

export default Popup2;
