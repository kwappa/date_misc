require 'date_misc'
require 'test/unit'

class TestDateEasyParse < Test::Unit::TestCase
  test '"ToDaY" returns Date.today' do
    assert_equal(Date.easy_parse('ToDaY'), Date.today)
  end

  test '"YESTERDAY" returns Date.today - 1' do
    assert_equal(Date.easy_parse('YESTERDAY'), Date.today - 1)
  end

  test '"tomorrow" returns Date.today + 1' do
    assert_equal(Date.easy_parse('tomorrow'), Date.today + 1)
  end

  test '"1/23 returns 23rd Jan of this year' do
    assert_equal(Date.easy_parse('1/23'), Date.new(Date.today.year, 1, 23))
  end

  test '"INVALID_STRING" returns Date.today' do
    assert_equal(Date.easy_parse('INVALID_STRING'), Date.today)
  end
end
