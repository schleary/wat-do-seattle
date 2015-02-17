class EmailNotifyJob

  @queue = :email

  def self.perform(user_id)
    puts "GETS TO THE JOB with the user id:"
    puts user_id
    EventMailer.notify(user_id).deliver
    puts "DELIVARRED!"
  end
end
