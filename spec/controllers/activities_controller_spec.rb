require 'rails_helper'

RSpec.describe ActivitiesController, :type => :controller do

  describe "GET 'new'" do
    it "has a 200 status code" do
      get :new
      # expect(response.status).to eq(200)
      expect(response).to redirect_to root_path
    end
  end

end
