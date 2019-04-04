require 'test_helper'

class SendMessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get send" do
    get send_messages_send_url
    assert_response :success
  end

end
