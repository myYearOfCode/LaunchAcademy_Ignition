import React from 'react'

import FormElement from './FormElement'

const Review = (props) => (
  <div className="row mbl">
    <div className="small-1 columns"><strong>Name</strong></div>
    <div className="small-11 columns">{props.data.name}</div>

    <div className="small-1 columns"><strong>Score</strong></div>
    <div className="small-11 columns">{props.data.rating / 100 * 5} stars</div>

    <div className="small-1 columns"><strong>Review</strong></div>
    <div className="small-11 columns">{props.data.content}</div>
  </div>
)

const Reviews = (props) => {
  let reviews

  let form = (
      <form onSubmit={props.formHandler}>
        <FormElement
          name="userName"
          label="user name"
          value={props.formData.userName}
          eventChangeHandler={props.eventChangeHandler}
        />
        <FormElement
          name="score"
          label="score"
          value={props.formData.score}
          eventChangeHandler={props.eventChangeHandler}/>
        <FormElement
          name="review"
          label="review"
          value={props.formData.review}
          eventChangeHandler={props.eventChangeHandler}/>
        <input type='hidden' name="id" id="id" value={props.formData.selectedId} />
        <input type="submit" />
      </form>
  )

  if (props.data && props.data.length > 0) {
    reviews = props.data.map((review, index) => {
      return <Review key={`review-${index}`} data={review} />
    })
  } else {
    reviews = `No reviews yet!`
  }

  return <div>{reviews}
  {form}</div>
}

export default Reviews
