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

    # it 'has an admin default value of false' do
    #   expect(user.admin).to eq(false)
    # end
  end

  # describe '.adminify' do
  #   it 'should make a user an admin' do
  #     user.adminify
  #     expect(user.admin).to eq(true)
  #   end
  # end
  #
  # describe 'rename' do
  #   pending
  # end
  #
  # describe 'change_email' do
  #   pending
  # end
  #
  # describe 'change_password' do
  #   pending
  # end
end
