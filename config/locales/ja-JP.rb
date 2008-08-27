I18n.backend.store_translations :'ja-JP', {
  # date and time formats
  :date => {
    :formats => {
      :default      => "%Y-%m-%d (ish)",
      :short        => "%e %b (ish)",
      :long         => "%B %e, %Y (ish)",
      :long_ordinal => lambda { |date| "%B #{date.day}ish, %Y" },
      :only_day     => lambda { |date| "#{date.day}ish"}
    },
    :day_names => %w(日曜日 月曜日 火曜日 水曜日 木曜日 金曜日 土曜日),
    :abbr_day_names => %w(日 月 火 水 木 金 土),
    :month_names => [nil] + %w(一月 二月 三月 四月 五月 六月　七月 八月 九月 十月 十一月 十二月),
    :abbr_month_names => [nil] + %w(一月 二月 三月 四月 五月 六月　七月 八月 九月 十月 十一月 十二月),
    :order => [:day, :month, :year]
  },
  :time => {
    :formats => {
      :default      => "%a %b %d %H:%M:%S %Z %Y (ish)",
      :time         => "%H:%M (ish)",
      :short        => "%d %b %H:%M (ish)",
      :long         => "%B %d, %Y %H:%M (ish)",
      :long_ordinal => lambda { |time| "%B #{time.day}ish, %Y %H:%M" },
      :only_second  => "%S (ish)"
    },
    :am => '',
    :pm => ''
  },

  # date helper distance in words
  :datetime => {
    :distance_in_words => {
      :half_a_minute       => 'a half-ish minute',
      :less_than_x_seconds => ['less than 1 second', '{{count}}ish seconds'],
      :x_seconds           => ['1 second', '{{count}}ish seconds'],
      :less_than_x_minutes => ['less than a minute', '{{count}}ish minutes'],
      :x_minutes           => ['1 minute', '{{count}}ish minutes'],
      :about_x_hours       => ['about 1 hour', '{{count}}ish hours'],
      :x_days              => ['1 day', '{{count}}ish days'],
      :about_x_months      => ['about 1 month', '{{count}}ish months'],
      :x_months            => ['1 month', '{{count}}ish months'],
      :about_x_years       => ['about 1 year', '{{count}}ish year'],
      :over_x_years        => ['over 1 year', '{{count}}ish years']
    }
  },

  # numbers
  :number => {
    :format => {
      :precision => 3,
      :separator => ',',
      :delimiter => '.'
    },
    :currency => {
      :format => {
        :unit => 'Gib-$',
        :precision => 2,
        :format => '%n %u'
      }
    }
  },

  # Active Record
  :active_record => {
    :error => {
      :header_message => ["Couldn't save this {{object_name}}: 1 error", "Couldn't save this {{object_name}}: {{count}} errors."],
      :message => "Please check the following fields, dude:"
    }
  },
  :active_record => {
    :error_messages => {
      :inclusion => "ain't included in the list",
      :exclusion => "ain't available",
      :invalid => "ain't valid",
      :confirmation => "don't match its confirmation",
      :accepted  => "gotta be accepted",
      :empty => "gotta be given",
      :blank => "gotta be given",
      :too_long => "is too long-ish (no more than {{count}} characters)",
      :too_short => "is too short-ish (no less than {{count}} characters)",
      :wrong_length => "ain't got the right length (gotta be {{count}} characters)",
      :taken => "ain't available",
      :not_a_number => "ain't a number",
      :greater_than => "gotta be greater than {{count}}",
      :greater_than_or_equal_to => "gotta be greater than or equal to {{count}}",
      :equal_to => "gotta be equal to {{count}}",
      :less_than => "gotta be less than {{count}}",
      :less_than_or_equal_to => "gotta be less than or equal to {{count}}",
      :odd => "gotta be odd",
      :even => "gotta be even"
    }
  },
  :txt => {
    :main_title => "Railsをローカライズする",
    :app_name => "デモ アプリケーション",
    :sub_title => "新しいi18nの特徴を用いてアプリケーションをローカライズする方法",
    :contents => "コンテンツ",
    :menu => {
      :about => "デモアプリについて",
      :introduction => "導入",
      :setup => "設定",
      :date_formats => "日付フォーマット",
      :time_formats => "時間フォーマット"
    },
    :about => {
      :title => "デモアプリについて",
      :author => "このデモアプリは、{{mail_1}}と{{mail_2}}によって書かれています。",
      :feedback => "ご意見ご感想がありましたら、気軽にメールを頂ければ幸いです。また、Railsやその他のことについて、定期的に更新している私のブログも是非{{blog_href}}ご覧ください。",
      :licence => "このデモアプリとすべてのコンテンツライセンスは、{{licence_href}}にあります。もし、このライセンスによって禁止されている方法での使用をご検討の場合は、事前に私の許可を得るようにしてください。"
    },
    :active_record => {
      :too_lazy => "例はまだ載せていません。カスタムエラーメッセージの<strong>全て</strong>を表示するアトリビュートを考えるのがめんどくさくて・・・ ;-)",
      :easy_to_understand => "まぁ、理解するのは簡単だと思うんだけど・・・."
    }, 
    :date_formats => {
      :rails_standards_work => "Railsの標準フォーマット(Date::DATE_FORMATS)も有効です:"
    },
    :date_helper => {
      :date_time_title => "日付/時間 距離",
      :forms_title => "フォーム"
    },
    :index => {
      :introduction => "最近になり、{{sven_blog}} や {{sven_github}}によって、Railsにおけるインターナショナライゼーションやローカライゼーションを促進する多くの仕事がなされました。",
      :story_so_far => "このデモアプリは、あなたのアプリにおける大部分をローカライズするために、今まで実装されてきた特徴をどのように使用するかを示しています。"
    },
    :number_helper => {
      :note_one => "注意１: <code>number_to_phone</code> は、まだローカライズされていません。 そして、 おそらく今後もローカライズはされないのではと思います。- 少なくともコアには。 {{globalize}}の新しいバージョンのような新しいインターナショナライゼーションもしくは、ローカライゼーション・プラグインはこちらでお探しください。おそらく、彼らもプラグインをサポートすると思うので。",
      :note_two => "注意２: <code>number_to_currency</code>、<code>number_to_percentage</code>、 <code>number_to_human_size</code>は、すべて<code>number_with_precision</code>を内部的に使用しています。そして <code>number_with_precision</code>は、<code>number_with_delimiter</code>を内部的に使用しています。"
    },
      :setup => {
        :freezing_edge_and_adding => "Freezing Edge and installing the localized_dates plugin",
        :you_need_to_be_on_edge => "You need to be on Edge Rails in order to use the Rails i18n features:",
        :date_time_formats => "For date and time formats, you also need to install the {{localized_dates_link}}:",
        :config_locale => "Configuring the locale",
        :best_place => "The best place to put your locale configuration, in my opinion, is <code>config/locales</code>. The localized_dates plugin will copy two locales, en-US and de-AT, in this directory. You can extend or modify them and also create new locales.",
        :locale => "Here's the demo locale that was used for this demo application:",
        :defaults => "You also need to set up the default locale and/or locale in your <code>environment.rb</code> or an initializer.",
        :locale_structure_title => "A word on the structure of locales",
        :locale_structure_number => "You may have noticed that inside the <code>:number</code> part of the locale, we defined <code>:format</code> and <code>:currency</code>. In general, locales are structured hierarchically - i.e. a currencies are numbers, percentages are numbers, etc. <code>:currency</code> can either override the basic <code>:format</code> settings (in our case, we set <code>:precision</code> to 2 instead of 3) or extend them (we add two new options, <code>:unit</code> and <code>:format</code>).",
        :locale_structure_date_time => "The same holds true for dates and times: If needed, <code>:datetime</code> and <code>:time_with_zone</code> can be used to specifically address formatting of their respective types instead of just relying on the settings for <code>:time</code>. Note, however, that usually you want to use the same formats as <code>:time</code>."   
      },
      :time_format => {
        :rails_standards_work => "Rails standard formats (Time::DATE_FORMATS) still work:"
      }
  }
}