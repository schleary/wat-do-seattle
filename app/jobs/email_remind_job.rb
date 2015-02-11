class EmailRemindJob

  @queue = :email

  def self.perform
    EventMailer.remind(user_id).deliver
  end
end
