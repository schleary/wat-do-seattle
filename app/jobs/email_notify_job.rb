class EmailNotifyJob

  @queue = :email

  def self.perform
    EventMailer.notify(user_id).deliver
  end
end
