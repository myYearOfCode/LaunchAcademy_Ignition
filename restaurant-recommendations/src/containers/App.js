import React, { Component } from 'react'

import Restaurant from '../components/Restaurant'
import Reviews from '../components/Reviews'

import restaurants from '../constants/restaurants'
import reviews from '../constants/reviews'

class App extends Component {
  constructor(props) {
    super(props)
    this.state = {
      restaurants: restaurants,
      reviews: reviews,
      selectedId: restaurants[0].id,
      userName: "",
      score: "",
      rating: ""
    }
    this.eventChangeHandler = this.eventChangeHandler.bind(this)
    this.restaurantClick = this.restaurantClick.bind(this)
    this.formHandler = this.formHandler.bind(this)
  }

  restaurantClick(event) {
    event.preventDefault()
    this.setState({selectedId: event.target.id})
  }


  formHandler(event){
    event.preventDefault()
    console.log(this.state.reviews)
    console.log(typeof(this.state.reviews))
    let newReview = {
      restaurant_id: this.state.selectedId,
      name: this.state.userName,
      rating: this.state.score*20,
      content: this.state.rating
    }
    let currentReviews = this.state.reviews
    currentReviews.push(newReview)

    this.setState({reviews: currentReviews})
    console.log(this.state.reviews)
    console.log(typeof(this.state.reviews))

  }

  selectedRestaurant() {

    return this.state.restaurants.find((restaurant) =>
      (restaurant.id === this.state.selectedId)
    )
  }

  eventChangeHandler(event) {
    this.setState({ [event.target.id]: event.target.value })
  }

  render() {
    let restaurantComponents = restaurants.map((restaurant) => {
      return (
        <Restaurant key={restaurant.id}
          data={restaurant}
          isSelected={this.state.selectedId === restaurant.id}
          handleClick={this.restaurantClick}/>
      )
    })

    let relevantReviews = this.state.reviews.filter((review) =>
      (this.state.selectedId === review.restaurant_id)
    )

    let formData = {
      userName: this.state.userName,
      score: this.state.score,
      rating: this.state.rating,
      id: this.state.selectedId
    }
// debugger
    return(
      <div>
        <div className="row">
          <div className="restaurants small-2 columns">
            <h3>Restaurant</h3>
            {restaurantComponents}
          </div>
          <div className="reviews small-9 columns">
            <h3>Reviews for {this.selectedRestaurant().name}</h3>
            <Reviews
              data={relevantReviews}
              formData={formData}
              eventChangeHandler={this.eventChangeHandler}
              formHandler={this.formHandler}
              />
          </div>
        </div>
      </div>
    )
  }
}

export default App
