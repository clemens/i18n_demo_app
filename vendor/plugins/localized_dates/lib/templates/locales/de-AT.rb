I18n.backend.store_translations :'de-AT', {
  :date => {
    :formats => {
      :default      => "%d.%m.%Y",
      :short        => lambda { |date| "#{date.day}. %b" },
      :long         => lambda { |date| "#{date.day}. %B %Y" }
    },
    :day_names => %w(Sonntag Montag Dienstag Mittwoch Donnerstag Freitag Samstag),
    :abbr_day_names => %w(So Mo Di Mi Do Fr Sa),
    :month_names => [nil] + %w(Januar Februar März April Mai Juni Juli August September Oktober November Dezember),
    :abbr_month_names => [nil] + %w(Jan Feb Mär Apr Mai Jun Jul Aug Sep Okt Nov Dez),
    :order => [:day, :month, :year]
  },
  :time => {
    :formats => {
      :default      => lambda { |time| "%A, #{time.day}. %B %Y, %H:%M Uhr" },
      :time         => "%H:%M Uhr",
      :short        => lambda { |time| "#{time.day}.%m., %H:%M Uhr" },
      :long         => lambda { |time| "%A, #{time.day}. %B %Y, %H:%M Uhr" }
    },
    :am => '',
    :pm => ''
  }
}