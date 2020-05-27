require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderMailer.received(orders(:ruby))
    assert_equal "PETShop Order Confirmation", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["spongebob69961@gmail.com"], mail.from
    assert_match /1 x cat/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderMailer.shipped(orders(:ruby))
    assert_equal "PETShop Order Shipped", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["spongebob69961@gmail.com"], mail.from
    assert_match /<td>1&times;<\/td>\s*<td>cat<\/td>/,
      mail.body.encoded
  end

end
