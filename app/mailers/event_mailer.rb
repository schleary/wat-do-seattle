class EventMailer < ActionMailer::Base
  default from: "b@example.com"

  def confirm(user_id)
    @user = User.find(user_id)
    mail(
      to: @user.email,
      subject: "Welcome to Wat Do? [Seattle]!",
      from: "schleary@gmail.com"
    )
    mail(to: "bookis.smuin@gmail.com", subject: "You have an event coming up!").deliver()
  end

  def notify(user_id)
    @user = User.find(user_id)
    mail(
      to: @user.email,
      subject: "Wat Do? [Seattle] Event Invitation",
      from: "schleary@gmail.com"
    )

    # @event = Event.new
    mail(to: "bookis.smuin@gmail.com", subject: "You have an event coming up!").deliver()
  end

  def reminder(user_id)
    @user = User.find(user_id)
    mail(
      to: @user.email,
      subject: "Wat Do? [Seattle] Event Reminder",
      from: "schleary@gmail.com"
    )

    # @event = Event.new
    mail(to: "bookis.smuin@gmail.com", subject: "You have an event coming up!").deliver()
  end


end
