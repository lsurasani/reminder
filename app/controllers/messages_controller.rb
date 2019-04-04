class MessagesController < ApplicationController
  skip_forgery_protection
  #skip_before_filter :authenticate_user!, :only => "reply"

  def reply
    message_body = params["Body"]
    from_number = params["From"]
    client = helpers.boot_twilio
    sms = client.messages.create(
      from: ENV['PHONE_NUMBER'],
      to: from_number,
      body: "Hi!!!!"
    )
  end
end
