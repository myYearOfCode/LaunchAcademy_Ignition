import React, { Component } from 'react';

let wait = (milliseconds) => {
  let startTime = new Date().getTime()
  var currentTime = startTime
  while (currentTime < startTime + milliseconds) {
    currentTime = new Date().getTime()
  }
}

class Picture extends Component {
  constructor(props) {
    super(props);
    this.state = {
      clean: true
    };

    this.handleCleanGlassClick = this.handleCleanGlassClick.bind(this);
    this.handleTouchGlassClick = this.handleTouchGlassClick.bind(this);
  }

  componentWillMount() {
     console.log("** componentWillMount **")
     console.log("render() is about to be called, and the Picture component will appear...")
     wait(1000)
   }

   componentDidMount() {
     console.log("** componentDidMount **")
     console.log("render() was just called.")
   }

   componentWillUnmount() {
     console.log("** componentWillUnmount **")
     console.log("Say 'Goodbye,' to the Picture component...")
     wait(1000)
   }

   componentWillReceiveProps(nextProps) {
    console.log(`**componentWillReceiveProps** ${nextProps}`)
   }

   shouldComponentUpdate(nextProps, nextState) {
    console.log(`**shouldComponentUpdate** ${nextProps}, ${nextState}`)
    return true
   }

   componentWillUpdate(nextProps, nextState) {
    console.log(`**componentWillUpdate** ${nextProps}, ${nextState}`)
   }

   componentDidUpdate(previousProps, previousState) {
    console.log(`**componentDidUpdate** ${previousProps}, ${previousState}`)
   }



  handleCleanGlassClick() {
    this.setState({ clean: true });
  }

  handleTouchGlassClick() {
    this.setState({ clean: false });
  }

  render() {
    let cleanText = this.state.clean ? "clean" : "dirty";
    let levelText = (this.props.straightenCount % 2 == 0) ? "level" : "crooked";

    return(
      <div>
        <h1 className="picture">I am a mounted picture component!</h1>
        <p>The picture has been straightened {this.props.straightenCount} times</p>
        <p>The picture is {cleanText} and {levelText}</p>
        <div className="topnav">
          <button onClick={this.handleCleanGlassClick} className="btn">Clean Glass</button>
          <button onClick={this.handleTouchGlassClick} className="btn">Touch Glass</button>
        </div>
      </div>
    );
  }
}

export default Picture;
