require 'rails_helper'

RSpec.describe Activity, :type => :model do

  let(:activity) {
    Activity.new(
      name: "Eating Toast",
      price: 2,
      url: "toast.com",
      description: "Well... eat the toast",
      min_activity_level: 1,
      max_activity_level: 5
    )
  }

  describe 'validations' do
    it 'is valid' do
      expect(activity).to be_valid
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
