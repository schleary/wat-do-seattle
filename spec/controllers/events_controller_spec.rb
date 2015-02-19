require 'rails_helper'

RSpec.describe EventsController, :type => :controller do

  # describe "GET create" do
  #   it "returns http success" do
  #     get :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "PATCH update" do
  #   it "returns http success" do
  #     patch :update
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
      expect(response).to be_success
      expect(response).to have_http_status(200)
   end

   it "renders the index template" do
     get :index
     expect(response).to render_template("index")
   end

   it "loads all of the posts into @events" do
     event1, event2 = Event.create!, Event.create!
     get :index

     expect(assigns(:events)).to match_array([event1, event2])
   end
 end
  # describe "GET destroy" do
  #   it "returns http success" do
  #     get :destroy
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
