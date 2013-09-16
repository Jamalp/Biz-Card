class CardController < ApplicationController
  def index
  end

  def email
  end

  def sms
    phone = params[:phone]
    if params[:phone]
      account_sid = ENV['TWILIO_ACCOUNT_SID']
      auth_token = ENV['TWILIO_AUTH_TOKEN']
      @client = Twilio::REST::Client.new account_sid, auth_token

      @client.account.sms.messages.create(
        :from => '+13024828869',
        :to => phone,
        :body => 'Hey there!'
      )

      redirect_to '/'
    end
  end
end