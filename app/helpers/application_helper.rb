module ApplicationHelper
  def boot_twilio
      account_sid = ENV['ACCOUNT_SID']
      puts account_sid
      auth_token = ENV['AUTH_TOKEN']
      puts auth_token
      Twilio::REST::Client.new account_sid, auth_token
  end
end
