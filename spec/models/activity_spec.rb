require 'rails_helper'

RSpec.describe Activity, :type => :model do

  let(:activity) {
    Activity.new(
      name: "goast-tating",
      price: 2,
      url: "goast.com",
      description: "goast-eating at its finest",
      min_activity_level: 1,
      max_activity_level: 3
    )
  }

  describe 'validations' do
    it 'is valid' do
      expect(activity).to be_valid
    end
  end

end
