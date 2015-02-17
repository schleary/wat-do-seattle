class EmailNotifyJob

  @queue = :email

  def self.perform(user_id)
    EventMailer.notify(user_id).deliver
  end
end
