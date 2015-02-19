require 'rails_helper'

RSpec.describe User, :type => :model do

  let(:user) {
    User.new(
      email: 'a@b.com',
      name: 'Holly',
    )
  }

  describe 'validations' do
    it 'is valid' do
      expect(user).to be_valid
    end

    it 'has an admin default value of false' do
      expect(user.admin).to eq(false)
    end

    it 'has an confirmed default value of false' do
      expect(user.confirmed).to eq(false)
    end

    it 'has a notify default value of false' do
      expect(user.notify).to eq(false)
    end
  end

  describe '.adminify' do
    it 'should make a user an admin' do
      user.adminify
      expect(user.admin).to eq(true)
    end
  end

  describe '.turn_down' do
    it 'should turn down a user for admin' do
      user.turn_down
      expect(user.turn_down).to eq(false)
    end
  end

  describe '.confirm' do
    it 'should confirm a user for admin' do
      user.confirm
      expect(user.confirm).to eq(true)
    end
  end

end
