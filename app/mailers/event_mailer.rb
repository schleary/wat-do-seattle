class EventMailer < ActionMailer::Base
  default from: "b@example.com"

  def notify
    # @event = Event.new
    mail(to: "bookis.smuin@gmail.com", subject: "You have an event coming up!").deliver()
  end
end