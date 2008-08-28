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
  }  ,
    :txt => {
      :main_title => "Localizing Rails",
      :app_name => "Demo Application",
      :sub_title => "how to localize your app with Rails' new i18n features",
      :contents => "Contents",
      :menu => {
        :introduction => "Introduction",
        :about => "About",
        :setup => "Setup",
        :date_formats => "Date formats",
        :time_formats => "Time formats"
      },
      :about => {
        :title => "About this demo app",
        :author => "This demo app was written by {{mail_1}}.",
        :feedback => "If you have any feedback, please feel free to drop me a line. Also visit {{blog_href}} where I regularly blog about Rails and other stuff.",
        :licence => "This demo app and all its contents are licensed under the {{licence_href}}. If you want to use it in ways prohibited by this license, please contact me and ask my permission."
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
        :introduction => "Lately, a lot of work has been done by {{sven_blog}} and {{sven_github}} to facilitate future internationalization and localization of Rails.",
        :story_so_far => "This demo app tries to show you how you can use the features that have been implemented so far to localize big parts of your Rails application."
      },
      :number_helper => {
        :note_one => "Note: <code>number_to_phone</code> hasn't been localized yet and probably never will be - at least not in core. Look out for new internationalization/localization plugins like a new version of {{globalize}} as they will probably support stuff like that.",
        :note_two => "Another note: <code>number_to_currency</code>, <code>number_to_percentage</code> and <code>number_to_human_size</code> all use <code>number_with_precision</code> internally and <code>number_with_precision</code> uses <code>number_with_delimiter</code> internally."
      },
      :setup => {
        :freezing_edge_and_adding => "Freezing Edge and installing the localized_dates plugin",
        :you_need_to_be_on_edge => "You need to be on Edge Rails in order to use the Rails i18n features:",
        :date_time_formats => "For date and time formats, you also need to install the {{localized_dates_link}}:",
        :in_place_editing => "And installs {{in_place_editing_link}} which supports i18n:",
        :config_locale => "Configuring the locale",
        :best_place => "The best place to put your locale configuration, in my opinion, is <code>config/locales</code>. The localized_dates plugin will copy two locales, en-US and de-AT, in this directory. You can extend or modify them and also create new locales.",
        :locale => "Here's the demo locale that was used for this demo application:",
        :defaults => "You also need to set up the default locale and/or locale in your <code>environment.rb</code> or an initializer.",
        :locale_structure_title => "A word on the structure of locales",
        :locale_structure_number => "You may have noticed that inside the <code>:number</code> part of the locale, we defined <code>:format</code> and <code>:currency</code>. In general, locales are structured hierarchically - i.e. a currencies are numbers, percentages are numbers, etc. <code>:currency</code> can either override the basic <code>:format</code> settings (in our case, we set <code>:precision</code> to 2 instead of 3) or extend them (we add two new options, <code>:unit</code> and <code>:format</code>).",
        :locale_structure_date_time => "The same holds true for dates and times: If needed, <code>:datetime</code> and <code>:time_with_zone</code> can be used to specifically address formatting of their respective types instead of just relying on the settings for <code>:time</code>. Note, however, that usually you want to use the same formats as <code>:time</code>."   
      },
      :time_formats => {
        :rails_standards_work => "Rails standard formats (Time::DATE_FORMATS) still work:"
      },
        :ipe => {
          :click => "click here!"
        }
    }
}