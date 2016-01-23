require 'date_misc'
require 'test/unit'

class TestDateLocalizedNames < Test::Unit::TestCase
  sub_test_case 'Date#wday_name' do
    test '24th Jan 2016 is Sunday' do
      assert_equal(Date.new(2016, 1, 24).wday_name, '日')
    end

    test '25th Jan 2016 is Monday' do
      assert_equal(Date.new(2016, 1, 25).wday_name(:ja), '月')
    end
  end
end
