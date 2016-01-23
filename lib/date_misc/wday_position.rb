module DateMisc
  module WdayPosition
    def wday_position
      (self.day - 1) / 7 + 1
    end
  end
end
