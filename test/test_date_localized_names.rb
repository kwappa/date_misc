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

  sub_test_case('Date#month_name') do
    test 'January is "睦月"' do
      assert_equal(Date.new(2016, 1, 1).month_name, '睦月')
    end

    test 'December is "師走"' do
      assert_equal(Date.new(2016, 12, 31).month_name, '師走')
    end
  end
end
