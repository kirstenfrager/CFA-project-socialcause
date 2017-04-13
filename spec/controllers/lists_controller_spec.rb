require 'rails_helper'

RSpec.describe ListsController, type: :controller do

  describe "GET #influencer_list" do
    it "returns http success" do
      get :influencer_list
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #photo_list" do
    it "returns http success" do
      get :photo_list
      expect(response).to have_http_status(:success)
    end
  end

end
