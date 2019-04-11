class DelayMessageJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    sender = SendMessage.new
    sender.send_daily
  end
end
