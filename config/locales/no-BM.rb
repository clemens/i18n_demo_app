## no-BM.rb

I18n.backend.store_translations :"no-BM", { 

  :support => { 

    :array => { 

      :sentence_connector => "og" 

    } 

  }, 

  :date => { 

    :formats => { 

      :default => "%Y-%m-%d", 

      :short => "%b %d", 

      :long => "%B %d, %Y", 

    }, 

    :day_names => Date::DAYNAMES, 

    :abbr_day_names => Date::ABBR_DAYNAMES, 

    :month_names => Date::MONTHNAMES, 

    :abbr_month_names => Date::ABBR_MONTHNAMES, 

    :order => [:year, :month, :day] 

  }, 

  :time => { 

    :formats => { 

      :default => "%a, %d %b %Y %H:%M:%S %z", 

      :short => "%d %b %H:%M", 

      :long => "%B %d, %Y %H:%M", 

    }, 

    :am => "am", 

    :pm => "pm" 

  }, 

  :datetime => { 

    :distance_in_words => { 

      :half_a_minute => "et halvt minutt", 

      :less_than_x_seconds => ["mindre enn 1 sekund", "mindre enn {{count}} sekunder"], 

      :x_seconds => ["1 sekund", "{{count}} sekunder"], 

      :less_than_x_minutes => ["mindre enn 1 minutt", "mindre enn {{count}} minutter"], 

      :x_minutes => ["1 minutt", "{{count}} minutter"], 

      :about_x_hours => ["ca. 1 time", "ca. {{count}} timer"], 

      :x_days => ["1 dag", "{{count}} dager"], 

      :about_x_months => ["ca. 1 måned", "ca. {{count}} måneder"], 

      :x_months => ["1 måned", "{{count}} måneder"], 

      :about_x_years => ["ca. 1 år", "ca. {{count}} år"], 

      :over_x_years => ["over 1 år", "over {{count}} år"] 

    } 

  }, 

  :number => { 

    :format => { 

      :precision => 3, 

      :separator => ".", 

      :delimiter => "," 

    }, 

    :currency => { 

      :format => { 

        :unit => "$", 

        :precision => 2, 

        :format => "%u%n" 

      } 

    }, 

    :human => { 

      :format => { 

        :precision => 1, 

        :delimiter => "" 

      } 

    }, 

    :percentage => { 

      :format => { 

        :delimiter => "" 

      } 

    }, 

    :precision => { 

      :format => { 

        :delimiter => "" 

      } 

    } 

  }, 

  :active_record => { 

    :error => { 

      :header_message => ["1 feil forbød {{object_name}} fra å bli lagret", "{{count}} feil forbød {{object_name}} fra å bli lagret"], 

      :message => "det oppstod problemer i følgende felt:" 

    } 

  }, 

  :active_record => { 

    :error_messages => { 

      :inclusion => "er ikke inkludert i listen", 

      :exclusion => "er reservert", 

      :invalid => "er ugyldig", 

      :confirmation => "passer ikke bekreftelsen", 

      :accepted => "må være akseptert", 

      :empty => "kan ikke være tom", 

      :blank => "kan ikke være blank", 

      :too_long => "er for lang (maksimum {{count}} tegn)", 

      :too_short => "er for kort (minimum {{count}} tegn)", 

      :wrong_length => "er av feil lengde (maksimum {{count}} tegn)", 

      :taken => "er allerede tatt", 

      :not_a_number => "er ikke et nummer", 

      :greater_than => "må være større enn {{count}}", 

      :greater_than_or_equal_to => "må være større enn eller lik {{count}}", 

      :equal_to => "må være lik {{count}}", 

      :less_than => "må være mindre enn {{count}}", 

      :less_than_or_equal_to => "må være mindre enn eller lik {{count}}", 

      :odd => "må være oddetall", 

      :even => "må være partall" 

    } 

  } 

} 

## en-US.rb

I18n.backend.store_translations :"en-US", { 

  :support => { 

    :array => { 

      :sentence_connector => "and" 

    } 

  }, 

  :date => { 

    :formats => { 

      :default => "%Y-%m-%d", 

      :short => "%b %d", 

      :long => "%B %d, %Y", 

    }, 

    :day_names => Date::DAYNAMES, 

    :abbr_day_names => Date::ABBR_DAYNAMES, 

    :month_names => Date::MONTHNAMES, 

    :abbr_month_names => Date::ABBR_MONTHNAMES, 

    :order => [:year, :month, :day] 

  }, 

  :time => { 

    :formats => { 

      :default => "%a, %d %b %Y %H:%M:%S %z", 

      :short => "%d %b %H:%M", 

      :long => "%B %d, %Y %H:%M", 

    }, 

    :am => "am", 

    :pm => "pm" 

  }, 

  :datetime => { 

    :distance_in_words => { 

      :half_a_minute => "half a minute", 

      :less_than_x_seconds => ["less than 1 second", "less than {{count}} seconds"], 

      :x_seconds => ["1 second", "{{count}} seconds"], 

      :less_than_x_minutes => ["less than 1 minute", "less than {{count}} minutes"], 

      :x_minutes => ["1 minute", "{{count}} minutes"], 

      :about_x_hours => ["about 1 hour", "about {{count}} hours"], 

      :x_days => ["1 day", "{{count}} days"], 

      :about_x_months => ["about 1 month", "about {{count}} months"], 

      :x_months => ["1 month", "{{count}} months"], 

      :about_x_years => ["about 1 year", "about {{count}} year"], 

      :over_x_years => ["over 1 year", "over {{count}} years"] 

    } 

  }, 

  :number => { 

    :format => { 

      :precision => 3, 

      :separator => ".", 

      :delimiter => "," 

    }, 

    :currency => { 

      :format => { 

        :unit => "$", 

        :precision => 2, 

        :format => "%u%n" 

      } 

    }, 

    :human => { 

      :format => { 

        :precision => 1, 

        :delimiter => "" 

      } 

    }, 

    :percentage => { 

      :format => { 

        :delimiter => "" 

      } 

    }, 

    :precision => { 

      :format => { 

        :delimiter => "" 

      } 

    } 

  }, 

  :active_record => { 

    :error => { 

      :header_message => ["1 error prohibited this {{object_name}} from being saved", "{{count}} errors prohibited this {{object_name}} from being saved"], 

      :message => "there were problems with the following fields:" 

    } 

  }, 

  :active_record => { 

    :error_messages => { 

      :inclusion => "is not included in the list", 

      :exclusion => "is reserved", 

      :invalid => "is invalid", 

      :confirmation => "doesn't match confirmation", 

      :accepted => "must be accepted", 

      :empty => "can't be empty", 

      :blank => "can't be blank", 

      :too_long => "is too long (maximum is {{count}} characters)", 

      :too_short => "is too short (minimum is {{count}} characters)", 

      :wrong_length => "is the wrong length (should be {{count}} characters)", 

      :taken => "has already been taken", 

      :not_a_number => "is not a number", 

      :greater_than => "must be greater than {{count}}", 

      :greater_than_or_equal_to => "must be greater than or equal to {{count}}", 

      :equal_to => "must be equal to {{count}}", 

      :less_than => "must be less than {{count}}", 

      :less_than_or_equal_to => "must be less than or equal to {{count}}", 

      :odd => "must be odd", 

      :even => "must be even" 

    } 

  } 

} 
