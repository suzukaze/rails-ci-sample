require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.create!(username: 'takashi777', nickname: 'hoge', email: 'takashi@example.com')
  end

  test 'Userオブジェクトが正しい' do
    assert @user.valid?
  end

  test 'usernameが正しい' do
    assert @user.valid?

    @user.username = 'takashi?'
    assert_not @user.valid?
  end
end
