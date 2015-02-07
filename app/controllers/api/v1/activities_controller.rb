module Api
  module V1
    class ActivitiesController < ApplicationController
      # class Activity < ::Activity
      #   # Note: this does not take into consideration the create/update actions for changing released_on
      #   def as_json(options = {})
      #     super.merge(released_on: released_at.to_date)
      #   end
      # end

      respond_to :json

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
    end
  end
end
