I18n.backend.store_translations :'en-US', {
  :date => {
    :formats => {
      :default      => "%Y-%m-%d",
      :short        => "%e %b",
      :long         => "%B %e, %Y",
      :long_ordinal => lambda { |date| "%B #{date.day.ordinalize}, %Y" }
    },
    :day_names => Date::DAYNAMES,
    :abbr_day_names => Date::ABBR_DAYNAMES,
    :month_names => Date::MONTHNAMES,
    :abbr_month_names => Date::ABBR_MONTHNAMES,
    :order => [:year, :month, :day]
  },
  :time => {
    :formats => {
      :default      => "%a %b %d %H:%M:%S %Z %Y",
      :time         => "%H:%M",
      :short        => "%d %b %H:%M",
      :long         => "%B %d, %Y %H:%M",
      :long_ordinal => lambda { |time| "%B #{time.day.ordinalize}, %Y %H:%M" }
    },
    :datetime => {
      :formats => {
        :default => "%Y-%m-%dT%H:%M:%S%Z"
      }
    },
    :time_with_zone => {
      :formats => {
        :default => lambda { |time| "%Y-%m-%d %H:%M:%S #{time.formatted_offset(false, 'UTC')}" }
      }
    },
    :am => 'am',
    :pm => 'pm'
  }
}