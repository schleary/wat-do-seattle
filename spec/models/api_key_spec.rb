require 'rails_helper'

RSpec.describe ApiKey, :type => :model do
  let(:api_key) {
    ApiKey.new(
    access_token: 24897345897543
    )
  }

  describe 'validations' do
    it 'is valid' do
      expect(api_key).to be_valid
    end
  end

  it "takes parameters and returns an object" do
    api_key.should be_an_instance_of ApiKey
  end
end
