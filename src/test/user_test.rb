require 'test/unit'
require_relative '../classes/user'

class UserTest < Test::Unit::TestCase
    def test_user_list_is_accesable
        user = User.new
        assert_equal([], user.user_list)
    end
end