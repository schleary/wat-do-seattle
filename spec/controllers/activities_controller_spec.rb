require 'rails_helper'

RSpec.describe ActivitiesController, :type => :controller do

  describe "GET 'new'" do
    it "has a 200 status code" do
      get :new
      # expect(response.status).to eq(200)
      expect(response.status).to eq(200)
    end
  end

  describe "POST 'create'" do
     it "redirects to home page" do
       post :create, activity: {
         name: "Toast-Eating",
         price: 2,
         url: "toast.com",
         description: "Toast-eating at its finest",
         min_activity_level: 1,
         max_activity_level: 3
       }
       expect(response).to redirect_to root_path
     end
   end

   describe "GET 'show'" do
     it 'is successful' do
       activity = Activity.create(
         name: "Toast-Eating",
         price: 2,
         url: "toast.com",
         description: "Toast-eating at its finest",
         min_activity_level: 1,
         max_activity_level: 3
    )
       get :show, id: activity.id
       expect(response.status).to eq(200)
     end
   end


   describe "PATCH 'update'" do
     it 'updates an activity' do
       activity = Activity.create(
         name: "Toast-Eating",
         price: 2,
         url: "toast.com",
         description: "Toast-eating at its finest",
         min_activity_level: 1,
         max_activity_level: 3
        )
       patch :update, id: activity.id, activity: {
         name: "Toes-Eating",
         price: 5,
         url: "toes.com",
         description: "Look at your toes",
         min_activity_level: 1,
         max_activity_level: 2
        }
       expect(response).to redirect_to activity_show_path(activity.id)
     end
    #  it "redirects to the activity show page" do
    #    pending
    #  end
   end

  #  describe "DELETE 'destroy'" do
  #    pending
  #  end

end
