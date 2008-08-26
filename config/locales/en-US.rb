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
  },
    :txt => {
      :main_title => "Localizing Rails",
      :app_name => "Demo Application",
      :sub_title => "how to localize your app with Rails' new i18n features",
      :contents => "Contents",
      :menu => {
        :introduction => "Introduction",
        :setup => "Setup",
        :date_formats => "Date formats",
        :time_formats => "Time formats"
      },
      :about => {
        :title => "About this demo app",
        :author => "This demo app was written by <%= mail_to \"clemens@railway.at\", \"Clemens Kofler\" %>.",
        :feedback => "If you have any feedback, please feel free to drop me a line. Also visit <%= link_to \"www.railway.at\", \"http://www.railway.at\" %> where I regularly blog about Rails and other stuff.",
        :licence => "This demo app and all its contents are licensed under the <%= link_to \"Creative Commons Attribution Noncommercial Share Alike License\", \"http://creativecommons.org/licenses/by-nc-sa/2.0/at/\" %>. If you want to use it in ways prohibited by this license, please contact me and ask my permission."
      },
      :active_record => {
        :too_lazy => "No examples here since I'm too lazy to think of attributes to show <strong>all</strong> custom error messages. ;-)",
        :easy_to_understand => "It's quite easy to understand, though."
      }, 
      :date_formats => {
        :rails_standards_work => "Rails standard formats (Date::DATE_FORMATS) still work:"
      },
      :date_helper => {
        :date_time_title => "Date/Time distance",
        :forms_title => "Forms"
      },
      :index => {
        :introduction => "Lately, a lot of work has been done by <%= link_to \"Sven Fuchs\", \"http://www.artweb-design.de/\" %> and <%= link_to \"others\", \"http://github.com/svenfuchs/i18n/tree/48ff00d2af07693171ec341500537b30e23e83bc/README.textile\" %> to facilitate future internationalization and localization of Rails.",
        :story_so_far => "This demo app tries to show you how you can use the features that have been implemented so far to localize big parts of your Rails application."
      },
      :number_helper => {
        :note_one => "Note: <code>number_to_phone</code> hasn't been localized yet and probably never will be - at least not in core. Look out for new internationalization/localization plugins like a new version of <%= link_to \"Globalize\", \"http://globalize.rubyforge.org/\" %> as they will probably support stuff like that.",
        :note_two => "Another note: <code>number_to_currency</code>, <code>number_to_percentage</code> and <code>number_to_human_size</code> all use <code>number_with_precision</code> internally and <code>number_with_precision</code> uses <code>number_with_delimiter</code> internally."
      }
    }
}