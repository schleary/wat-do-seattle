require 'rails_helper'

RSpec.describe Invite, :type => :model do
  let(:invite) {
    Invite.new(
    status: "Not Yet Responded", user_id: 2, event_id: 4, guest_id: 5
    )
  }

  describe 'validations' do
    it 'is valid' do
      expect(invite).to be_valid
    end
  end
end
