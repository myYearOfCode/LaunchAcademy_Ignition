# Testing our Rails API Endpoints

### Set Up

```no-highlight
et get controller-testing
bundle
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
bundle exec rails s
```

And in a separate tab:

```no-highlight
yarn install
yarn run start
```

**Note:** Sometimes, `bundle` will hang at `Fetching nokogiri 1.8.2` or `Installing nokogiri 1.8.2 with native extensions` If that's happening, you can wait it out, or `control-c` to force quit, then run `bundle` again. It makes sense that this takes a bit longer than most gems, so don't panic if this happens!

You should be able to navigate to `localhost:3000` and see an index page of gifs with a form to add a new gif.

### Learning Goals

- Implement testing of Rails API Endpoints
- Make informed decisions about which parts of our applications to test.

### Introduction

You may have seen this picture used to describe testing your applications.

![Interlocking gears][gears]

We've learned how to _unit test_ each individual gear to make sure that our models are creating the Ruby or ActiveRecord objects that we expect with the proper attributes. We've also used Capybara to _feature test_ our application and make sure that our app is behaving the way we want it to in response to user interaction.

When making a full stack Rails application, unit tests and feature tests are often sufficient to ensure that our app is functioning as expected. If we know that our models are correctly making objects out of our data, and that our data appears and disappears correctly from the page as the user interacts with it, we can infer that our controllers are behaving the way we want them to, and correctly handling the data we want to display to the user and the data we want to delete.

But what happens when we introduce a JavaScript front end? We can write Enzyme tests to make sure that, if given good data, our React front end displays it correctly. But JavaScript isn't involved in deciding which data is served up. We want to make sure that our Rails back-end is serving up the kind of data that our React front-end is expecting. Testing this "hand off" is called _integration testing_.

### How Do We Sufficiently Test Our App?

If we take a look at our app, its purpose is pretty straightforward. We have a `namespace`d resource for `gifs`, a `Gif` model that inherits from `ActiveRecord::Base`, and an `Api::V1::GifsController` that has an `index` and `create` method. On the front end, the `GifsContainer` issues a `GET` request to `api/v1/gifs`, and the `FormContainer` issues a `POST` request to `api/v1/gifs` to add a new gif. What would testing this app thoroughly look like?

First, we could unit test our `Gif` model to assert that it passes our `presence` and `uniqueness` constraints. If we built this app out to allow users to comment on a `Gif`, we might even add a test to assert that a `Gif` `has many` `comments`.

We can also feature test our front end using Enzyme and Jasmine, to make sure that, for instance, when given an arbitrary `name` and `url` from `props`, a `GifTile` renders the HTML that we expect.

Now, let's make sure that our API controller is handing off the data we expect when our `fetch` call hits our API!

### Testing our `GET` Request

Let's create a file in `spec/controllers/api/v1` called `gifs_controller_spec.rb`. The setup will be very similar to most RSpec tests you've written:

```ruby
# gifs_controller_spec.rb

require "rails_helper"

RSpec.describe Api::V1::GifsController, type: :controller do
  let!(:first_gif) { Gif.create(
    name: "Hello this is Dog",
    url: "https://media.giphy.com/media/pSpmpxFxFwDpC/giphy.gif",
    likes: 250
  ) }
  let!(:second_gif) { Gif.create(
    name: "Pug Swimming",
    url: "https://media.giphy.com/media/r6ALgGVKLg93O/giphy.gif",
    likes: 47
  ) }

  describe "GET#index" do
    it "should return a list of all the gifs" do

      get :index
      returned_json = JSON.parse(response.body)

      # More code to come!

    end
  end
end
```

Here, we are setting up our test, and telling rspec that the `type` of test is a `controller` test. We're also creating some dummy data to use in our test environment.

The second `describe` block actually calls on our API controller.
We're issuing a `GET` request to the controller's `index` method, which returns a
`response` object (from our HTTP request/response cycle). We parse the body of the response and save it as `returned_json`.

Take a second to look back at the `Api::V1::GifsController` and think about what kinds of things we want to test for, and then continue reading below.

What do we want to test?

- That the server responds with a status of 200, and does not error out when called.
- That the server responds with JSON, which we know our JavaScript code can read.
- That the server responds with all of the instances of the `Gif` class (two, in this case)
- That the server responded with the attributes we expect for each gif.
- That the server responded with the **most-liked** gif first.

We can test all of these points using the completed `it` block below:

```ruby
describe "GET#index" do
  it "should return a list of all the gifs ordered by likes" do

    get :index
    returned_json = JSON.parse(response.body)

    expect(response.status).to eq 200
    expect(response.content_type).to eq("application/json")

    expect(returned_json.length).to eq 2
    expect(returned_json[0]["name"]).to eq "Pug Swimming"
    expect(returned_json[0]["url"]).to eq "https://media.giphy.com/media/r6ALgGVKLg93O/giphy.gif"

    expect(returned_json[1]["name"]).to eq "Hello this is Dog"
    expect(returned_json[1]["url"]).to eq "https://media.giphy.com/media/pSpmpxFxFwDpC/giphy.gif"

  end
end

```

With these tests, we can be fairly confident that we have tested all of the parts of our API endpoint that might break other parts of our application. We can run `bundle exec rspec` to make sure all of our tests are passing!

### Testing our `POST` Request

Now let's test the `POST` request that is issued when a user fills out the form. We can add a new `describe` block below our `GET` describe block in our `gifs_controller_spec.rb`:

```ruby
describe "POST#create" do
  it "creates a new Gif" do
    post_json = {
      name: "Basset Hound Shakes Off",
      url: "https://media.giphy.com/media/WjjXDenYaxQys/giphy.gif"
    }.to_json

    prev_count = Gif.count
    post(:create, body: post_json)
    expect(Gif.count).to eq(prev_count + 1)
  end

  # We'll add another it block here soon!
end
```

Here, we create some json test data and save it to the variable `post_json`. We then assert that if you issue a `POST` request with that test data, it actually makes a new instance of the `Gif` class.

But this endpoint does more than just create a new instance of the `Gif` class. It also returns the new `Gif` as json so that our React code can update the `state` and display the new gif on the page. Let's write a new `it` block to account for the returned json and add it below our `creates a new Gif` `it` block.

```ruby
  it "returns the json of the newly posted gif" do
    post_json = {
      name: "Basset Hound Shakes Off",
      url: "https://media.giphy.com/media/WjjXDenYaxQys/giphy.gif"
    }.to_json

    post(:create, body: post_json)
    returned_json = JSON.parse(response.body)
    expect(response.status).to eq 200
    expect(response.content_type).to eq("application/json")

    expect(returned_json).to be_kind_of(Hash)
    expect(returned_json).to_not be_kind_of(Array)
    expect(returned_json["name"]).to eq "Basset Hound Shakes Off"
    expect(returned_json["url"]).to eq "https://media.giphy.com/media/WjjXDenYaxQys/giphy.gif"
  end
```

Now we have thoroughly tested that:

- The `POST` endpoint creates a new `Gif`
- It does not error out
- It returns JSON
- It returns a Hash, not an Array (so we know it's only returning the one gif we added, not all of the gifs in the database!)
- The Hash it returns has the name and url that we expect

### Wrapping it up

We now know how to fully test our React on Rails applications! Things to keep in mind:

- We need to test our controllers whenever we are handing off data from Rails to a React front-end
- We want to test the response `status` and `content_type` to make sure it's successfully returning `json`
- It returns the correct number of items
- It returns those items in the order we expect (if we order it by an attribute)
- It returns the correct values for each attribute in the object

[gears]: https://s3.amazonaws.com/horizon-production/images/Testing+Gears "testing gears"