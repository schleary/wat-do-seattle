module Api
  module V1
    class ActivitiesController < ApplicationController

      http_basic_authenticate_with name: ENV["API_KEY"], password: ENV["API_SECRET"]

      # before_filter :restrict_access

      # class Activity < ::Activity
      #   # Note: this does not take into consideration the create/update actions for changing released_on
      #   def as_json(options = {})
      #     super.merge(released_on: released_at.to_date)
      #   end
      # end

      respond_to :json

      def upload_activities
        # data might be json. need to test
        puts "API CONTROLLER"
        Script.create_activites(params[:data])
      end

      def index
        respond_with Activity.all
      end

      def show
        respond_with Activity.find(params[:id])
      end

      def create
        respond_with Activity.create(params[:product])
      end

      def update
        respond_with Activity.update(params[:id], params[:product])
      end

      def destroy
        respond_with Activity.destroy(params[:id])
      end

      private

      # def generate_access_token
      #   begin
      #     self.access_token = SecureRandom.hex
      #   end while self.class.exists?(access_token: access_token)
      # end

      def restrict_access
        authenticate_or_request_with_http_token do |token, options|
          ApiKey.exists?(access_token: token)
        end
      end

    end
  end
end
