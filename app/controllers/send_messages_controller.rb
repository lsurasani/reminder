class SendMessagesController < ApplicationController
  skip_forgery_protection

  def send
    puts "here"
    client = helpers.boot_twilio
    client.messages.create(
      from: ENV['PHONE_NUMBER'],
      to: '+17325434382',
      body: 'Did you remember to take your medicine today?'
    )
  end
end
