require "rails_helper"

RSpec.describe Api::V1::FloofsController, type: :controller do

  describe "GET#show" do
    it "should return the record that has the id asked for" do
      first_floof = Floof.create(
        name: "tom",
        image: "https://media.giphy.com/media/WjjXDenYaxQys/giphy.gif",
        floofiness: 5
      )

      get :show, params: {id: first_floof.id}
      returned_json = JSON.parse(response.body)
      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/json")
binding.pry
      expect(returned_json.length).to eq 2
      expect(returned_json["floof"]["name"]).to eq first_floof.name
      expect(returned_json["floof"]["image"]).to eq first_floof.image

    end
  end
end
