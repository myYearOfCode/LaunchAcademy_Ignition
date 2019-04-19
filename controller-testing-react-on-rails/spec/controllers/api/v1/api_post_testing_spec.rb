require "rails_helper"

RSpec.describe Api::V1::PostsController, type: :controller do

  describe "POST#create" do
    it "creates a new floof" do
      
      first_floof = Floof.create(
        name: "tom",
        image: "https://media.giphy.com/media/WjjXDenYaxQys/giphy.gif",
        floofiness: 5
      )

      second_floof = Floof.create(
        name: "som",
        image: "https://smedia.giphy.com/media/WjjXDenYaxQys/giphy.gif",
        floofiness: 4
      )

      post_json = {
        body: "this is not a Basset Hound",
        floof_id: Floof.first.id
      }.to_json

      post(:create, body: post_json)
      returned_json = JSON.parse(response.body)
      expect(returned_json["body"]).to eq(JSON.parse(post_json)["body"])


    end
  end
end
