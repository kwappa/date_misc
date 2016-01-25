module DateMisc
  module EasyParse
    def easy_parse(date_str)
      date_str = date_str.strip.downcase
      case date_str
      when 'today'
        Date.today
      when 'tomorrow'
        Date.today + 1
      when 'yesterday'
        Date.today - 1
      else
        Date.parse(date_str)
      end
    rescue
      Date.today
    end
  end
end
