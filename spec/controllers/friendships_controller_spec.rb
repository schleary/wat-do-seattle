require 'rails_helper'

RSpec.describe FriendshipsController, :type => :controller do

  describe "GET #index" do
   it "responds successfully with an HTTP 200 status code" do
     get :index
     expect(response).to be_success
     expect(response).to have_http_status(200)
   end

   it "renders the index template" do
     get :index
     expect(response).to render_template("index")
   end

 end

  # describe "GET create" do
  #   it "returns http success" do
  #     get :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET destroy" do
  #   it "returns http success" do
  #     get :destroy
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
