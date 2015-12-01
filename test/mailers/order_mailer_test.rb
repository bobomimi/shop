require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "order_information" do
    mail = OrderMailer.order_information
    assert_equal "Order information", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
