class EventMailer < ActionMailer::Base
  default from: "b@example.com"

  def confirm(user_id)
    @user = User.find(user_id)
    mail(
      to: @user.email,
      subject: "Welcome to Wat Do? [Seattle]!",
      from: "schleary@gmail.com"
    )
  end

  def adminify(user_id)
    @user = User.find(user_id)
    mail(
      to: @user.email,
      subject: "Wat Do? [Seattle] Admin & API Keys",
      from: "schleary@gmail.com"
    )
  end

  def notify(user_id)
    @user = User.find(user_id)
    mail(
      to: @user.email,
      subject: "Wat Do? [Seattle] Event Invitation",
      from: "schleary@gmail.com"
    )
  end

  def remind(user_id)
    @user = User.find(user_id)
    mail(
      to: @user.email,
      subject: "Wat Do? [Seattle] Event Reminder",
      from: "schleary@gmail.com"
    )
  end

end
