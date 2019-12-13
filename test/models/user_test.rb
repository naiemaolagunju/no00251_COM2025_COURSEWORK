require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test 'should not save invalid user' do
    user = User.new
    user.save
    refute user.valid?
  end

  test 'should save valid user' do
    user = User.new
    user.email = 'funbi.o@yahoo.co.uk'
    user.password = '1234567'
    user.save
    assert user.valid?
  end
  # test "the truth" do
  #   assert true
  # end
end
