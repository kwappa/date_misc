require 'date_misc/version'
require 'date_misc/easy_parse'
require 'date_misc/localized_names'
require 'date_misc/wday_position'

class Date
  extend  ::DateMisc::EasyParse
  include ::DateMisc::LocalizedNames
  include ::DateMisc::WdayPosition
end
