require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should return contact email" do
    mail = ContactMailer.contact_email("funbi.o@yahoo.co.uk", "Funbi Olagunju", "1234567890", @message = "Hello")

    assert_equal ['information@musiclibrary.com'], mail.to
    assert_equal ['customerservice@musiclibrary.com'], mail.from
  end
end
