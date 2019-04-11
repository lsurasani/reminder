desc "This task runs the daily reminder"

task :send_daily_reminder => :environment do
    sender = SendMessage.new
    puts sender
    sender.send_daily
end