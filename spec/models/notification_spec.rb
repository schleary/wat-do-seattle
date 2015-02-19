require 'rails_helper'

RSpec.describe Notification, :type => :model do
  let(:notification) {
    Notification.new(
    description: "stuff", user_id: 2, event_id: 4
    )
  }

  describe 'validations' do
    it 'is valid' do
      expect(notification).to be_valid
    end
  end
end
