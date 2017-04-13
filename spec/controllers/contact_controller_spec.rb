require 'rails_helper'

RSpec.describe ContactController, type: :controller do

  describe "GET #contact_page" do
    it "returns http success" do
      get :contact_page
      expect(response).to have_http_status(:success)
    end
  end

end
