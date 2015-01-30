require 'rails_helper'

RSpec.describe Activity, :type => :model do

  let(:activity) {
    Activity.new(
      name: "gating Toast",
      price: 2,
      url: "loast.com",
      description: "gell... eat the toast",
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
