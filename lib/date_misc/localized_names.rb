module DateMisc
  module LocalizedNames
    WDAY_NAMES = {
      ja: %w[日 月 火 水 木 金 土 日],
    }.freeze

    def wday_name(lang = :ja)
      WDAY_NAMES[lang][self.wday]
    end
  end
end
