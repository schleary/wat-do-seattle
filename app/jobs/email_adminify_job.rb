class EmailAdminifyJob

  @queue = :email

  def self.perform(user_id)
    EventMailer.adminify(user_id).deliver
    puts "DELIVERED!"
  end
end
