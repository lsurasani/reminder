class SendMessage < ApplicationRecord
  attr_accessor :daily_remind_reply

  def send_daily(params = "hi")
    puts "here"
    client = ApplicationController.helpers.boot_twilio
    client.messages.create(
      from: ENV['PHONE_NUMBER'],
      to: ENV['PERSONAL_PHONE_NUMBER'],
      body: 'Did you remember to take your medicine today?'
    )
  end

end
