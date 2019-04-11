desc "This task runs the daily reminder"

task :send_daily_reminder => :environment do
    SendMessages.send
end