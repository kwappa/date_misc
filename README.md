# DateMisc

[![Build Status](https://travis-ci.org/kwappa/date_misc.svg?branch=master)](https://travis-ci.org/kwappa/date_misc)

add misc methods to `Date`

## Usage

`require 'date_misc'`

- `Date.easy_parse(date_string)`
  - 'tomorrow', 'today' and 'yesterday' returns as you imagined
  - other string will be passed to original `Date.parse`
  - if invalid string is given, returns `Date.today`
- `Date#wday_position`
  - returns position of wday in current month
  - e.g : 23, Jan 2016 is 4th Saturday of this month

```
[1] pry(main)> Date.today
=> #<Date: 2016-01-23 ((2457411j,0s,0n),+0s,2299161j)>
[2] pry(main)> Date.today.wday
=> 6
[3] pry(main)> Date.today.wday_position
=> 4
```

- `Date#wday_name(latn = :ja)`
    - returns name of wday in specified language
- `Date#month_name(latn = :ja)`
    - returns name of month in specified language

```
[1] pry(main)> Date.today
=> #<Date: 2016-01-26 ((2457414j,0s,0n),+0s,2299161j)>
[2] pry(main)> Date.today.wday_name
=> "火"
[3] pry(main)> Date.today.month_name
=> "睦月"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/date_misc.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
