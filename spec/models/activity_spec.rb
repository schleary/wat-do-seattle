require 'rails_helper'

RSpec.describe Activity, :type => :model do

  let(:activity) {
    Activity.new(
      name: "goast-tating",
      min_price: 2,
      max_price: 3,
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

  describe "name" do
    it "returns the correct title" do
        activity.name.should eql "goast-tating"
    end
end

end
