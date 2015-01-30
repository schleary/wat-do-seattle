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
  end

end
