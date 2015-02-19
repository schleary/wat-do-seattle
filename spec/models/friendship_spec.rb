require 'rails_helper'

RSpec.describe Friendship, :type => :model do
  let(:friendship) {
    Friendship.new(
    friend_id: 2, user_id: 2
    )
  }

  describe 'validations' do
    it 'is valid' do
      expect(friendship).to be_valid
    end
  end
end
