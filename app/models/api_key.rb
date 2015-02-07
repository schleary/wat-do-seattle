class ApiKey < ActiveRecord::Base
  # before_create :generate_access_token

  # might want to add unique constraint to access_token here

  #should add admin boolean attribute.


  private

  def generate_access_token
    begin
      self.access_token = SecureRandom.hex
    end while self.class.exists?(access_token: access_token)
  end
end

#ApiKey.create! should generate an access tokent hat you generate to the user on a profile page of some sort
