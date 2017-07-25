class AnswerMailer < ApplicationMailer
  default from: 'sachdevarockz@gmail.com'

  def answer_email(user,answeredby)
    @user = user
    @answeredby  = answeredby
    mail(to: @user.email, subject: 'Your Question is Answered ')
  end

end
