require 'date_misc'
require 'test/unit'

class TestDateWdayPosition < Test::Unit::TestCase
  test '2016-01-01 is 1st friday' do
    date = Date.new(2016,  1,  1)
    assert_equal(date.wday, 5)
    assert_equal(date.wday_position, 1)
  end

  test '2016-01-07 is 1st thursday' do
    date = Date.new(2016,  1,  7)
    assert_equal(date.wday, 4)
    assert_equal(date.wday_position, 1)
  end

  test '2016-01-08 is 2nd fryday' do
    date = Date.new(2016,  1,  8)
    assert_equal(date.wday, 5)
    assert_equal(date.wday_position, 2)
  end

  test '2016-01-31 is 5th sunday' do
    date = Date.new(2016,  1, 31)
    assert_equal(date.wday, 0)
    assert_equal(date.wday_position, 5)
  end
end
