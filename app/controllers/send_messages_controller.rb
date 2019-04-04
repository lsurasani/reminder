class SendMessagesController < ApplicationController
  skip_forgery_protection

  def send(params = "hi")
    puts "here"
    client = helpers.boot_twilio
    client.messages.create(
      from: ENV['PHONE_NUMBER'],
      to: ENV['PERSONAL_PHONE_NUMBER'],
      body: 'Did you remember to take your medicine today?'
    )
  end
end
