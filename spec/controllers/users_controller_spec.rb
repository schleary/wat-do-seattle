require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

  describe "GET '#new'" do
    it "is successful" do
      user = User.create(name: "Holly", email: "holly@me.com")
      get :show, id: user.id
      expect(response.status).to eq(200)
    end
  end

  describe "POST 'create'" do
    it 'is successful' do
      expect{ post :create, user: {email: 'a@b.com', name: 'Holly'} }.to change(User, :count).by(1)
    end

    it 'should redirect to the profile page' do
      post :create, user: {email: 'a@b.com', name: 'Holly'}
      # expect(response).to redirect_to users_show_path(XXX_SOMETHING_NEEDS_TO_GO_HERE_XXX)
    end
  end

end
