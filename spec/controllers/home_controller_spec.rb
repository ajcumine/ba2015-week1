require 'rails_helper'

RSpec.describe HomeController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET show" do
    it "return the fizzbuzz data and http success" do
      get :show, { id: 3 }
      allow(controller).to receive(:get_results).with(3).and_return(["1", "2", "fizz"])
      expect(response).to have_http_status(:success)
    end
  end

  describe "get_results" do
    it "returns fizzbuzz data from argument passed" do
      expect(controller.get_results(3)).to eq(["1", "2", "fizz"])
    end
  end
end
