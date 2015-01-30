class EventMailer < ActionMailer::Base
  default from: "schleary@gmail.com"

  def notify
    # @event = Event.new
    mail(to: "schleary@gmail.com", subject: "You have an event coming up!")
  end
end
