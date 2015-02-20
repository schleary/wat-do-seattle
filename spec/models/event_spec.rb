require 'rails_helper'

RSpec.describe Event, :type => :model do
  let(:event) {
    Event.new(
    activity_id: 2, user_id: 2, description: "stuff"
    )
  }

  describe 'validations' do
    it 'is valid' do
      expect(event).to be_valid
    end
  end

  it "takes parameters and returns an object" do
    event.should be_an_instance_of Event
  end
end
