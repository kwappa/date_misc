module DateMisc
  module LocalizedNames
    WDAY_NAMES = {
      ja: %w[日 月 火 水 木 金 土 日],
    }.freeze

    MONTH_NAMES = {
      ja: %w[睦月 如月 弥生 卯月 皐月 水無月 文月 葉月 長月 神無月 霜月 師走]
    }.freeze

    def wday_name(lang = :ja)
      WDAY_NAMES[lang][self.wday]
    end

    def month_name(lang = :ja)
      MONTH_NAMES[lang][self.month - 1]
    end
  end
end
