class MessagesController < ApplicationController
  skip_forgery_protection
  #skip_before_filter :authenticate_user!, :only => "reply"

  def reply
    message_body = params["Body"]
    from_number = params["From"]
    client = helpers.boot_twilio
    send_body = nil

    case message_body.downcase
    when "yes"
      send_body = ":)"
    when "snooze"
      send_body = "How many hours?"
    when -> (n) { Float(self) != nil rescue false }
      send_body = "I'll remind you in #{message_body} hours."
    else
      send_body = "I'm sorry, I didn't get that."
    end

    sms = client.messages.create(
      from: ENV['PHONE_NUMBER'],
      to: from_number,
      body: send_body
    )

  end

  def index

  end
end
