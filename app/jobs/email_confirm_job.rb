class EmailConfirmJob

  @queue = :email

  def self.perform(user_id)
    EventMailer.confirm(user_id).deliver
    puts "DELIVERED!"
  end
end
