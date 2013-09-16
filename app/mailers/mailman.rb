class Mailman < ActionMailer::Base
  default from: "jamalkpowell@gmail.com"
  include SendGrid

  sendgrid_category :use_subject_lines
  sendgrid_enable :ganalytics, :opentrack
  sendgrid_unique_args key1: "value1", key2: "value2"

  def send_email()
    mail( to: params[:email],
          subject: "Hey! It's Jamal.",
          body: "Hey, I'm Jamal.  Great meeting you tonight! "
          )
  end

end