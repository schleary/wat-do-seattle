require 'rails_helper'

RSpec.describe ActivitiesController, :type => :controller do

  describe "GET 'new'" do
    it "has a 200 status code" do
      get :new
      # expect(response.status).to eq(200)
      expect(response.status).to eq(200)
    end
  end

  # describe "POST 'create'" do
  #    it "redirects to activity show page" do
  #      @activity = Activity.create(
  #        name: "voast-tating",
  #        min_price: 2,
  #        max_price: 3,
  #        url: "voast.com",
  #        description: "voast-eating at its finest",
  #        min_activity_level: 1,
  #        max_activity_level: 3
  #      )
  #      @activity.save
  #
  #      post :create, activity: {
  #        name: "voast-tating",
  #        min_price: 2,
  #        max_price: 3,
  #        url: "voast.com",
  #        description: "voast-eating at its finest",
  #        min_activity_level: 1,
  #        max_activity_level: 3
  #      }
  #       expect(response).to redirect_to activity_show_path(@activity.id)
  #    end
  #  end

   describe "GET 'show'" do
     it 'is successful' do
       activity = Activity.create(
         name: "boast-cating",
         min_price: 2,
         max_price: 3,
         url: "boast.com",
         description: "boast-eating at its finest",
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
         name: "Coast-tating",
         min_price: 2,
         max_price: 3,
         url: "coast.com",
         description: "coast-eating at its finest",
         min_activity_level: 1,
         max_activity_level: 3
        )
       patch :update, id: activity.id, activity: {
         name: "foast-tating",
         min_price: 2,
         max_price: 3,
         url: "foast.com",
         description: "foast-eating at its finest",
         min_activity_level: 1,
         max_activity_level: 3
        }
       expect(response).to redirect_to activity_show_path
     end
   end

end
