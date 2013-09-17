class Mailman < ActionMailer::Base
  default from: "jamalkpowell@gmail.com"
  include SendGrid

  sendgrid_category :use_subject_lines
  sendgrid_enable :ganalytics, :opentrack
  sendgrid_unique_args key1: "value1", key2: "value2"

  def send_email(email)

    mail( to: email,
          subject: "Aloha! It's Jamal.",
          body: "Hey, I'm Jamal.  I'm a graduate of General Assembly's Web Developement Immersive course.  I'd love to talk about code, projects and opportunites.  A portfolio of my work at GA is hosted on http://jamalp.github.io/Portoflio. Great meeting you tonight!

            Cheers,
            Jamal"
          )
  end

  def welcome_message()
    sendgrid_category "Welcome"
    sendgrid_unique_args :key2 => "newvalue2", :key3 => "value3"
    mail :to => @email, :subject => "Welcome homie :-)", :body => "Hey welcome to the site"
  end

end