require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

 #  describe "GET #index" do
 #   it "responds successfully with an HTTP 200 status code" do
 #     get :index
 #     expect(response).to be_success
 #     expect(response).to have_http_status(200)
 #   end
 #
 #   it "renders the index template" do
 #     get :index
 #     expect(response).to render_template("index")
 #   end
 #
 #   it "loads all of the users into @users" do
 #     user1, user2 = User.create!, User.create!
 #     get :index
 #
 #     expect(assigns(:user)).to match_array([user1, user2])
 #   end
 # end

  describe "GET '#new'" do
    it "is successful" do
      user = User.create(name: "Holly", email: "holly@me.com")
      get :show, id: user.id
      expect(response.status).to eq(200)
    end
  end

end
