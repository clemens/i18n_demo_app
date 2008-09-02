{ 
  :'ja-JP' => {
    # date and time formats
    :date => {
      :formats => {
        :default      => "%Y-%m-%d",
        :short        => "%e %b",
        :long         => "%B %e, %Y",
        :long_ordinal => lambda { |date| "%B #{date.day}, %Y" },
        :only_day     => "%e"
      },
      :day_names => %w(日曜日 月曜日 火曜日 水曜日 木曜日 金曜日 土曜日),
      :abbr_day_names => %w(日 月 火 水 木 金 土),
      :month_names => [nil] + %w(1月 2月 3月 4月 5月 6月 7月 8月 9月 10月 11月 12月),
      :abbr_month_names => [nil] + %w(1月 2月 3月 4月 5月 6月 7月 8月 9月 10月 11月 12月),
      :order => [:year, :month, :day]
    },
    :time => {
      :formats => {
        :default      => "%a %b %d %H:%M:%S %Z %Y",
        :time         => "%H:%M",
        :short        => "%d %b %H:%M",
        :long         => "%B %d, %Y %H:%M",
        :long_ordinal => lambda { |time| "%B #{time.day}, %Y %H:%M" },
        :only_second  => "%S"
      },
      :am => '',
      :pm => ''
    },

    # date helper distance in words
    :datetime => {
      :distance_in_words => {
        :half_a_minute       => '30分',
        :less_than_x_seconds => '{{count}} 秒以下',
        :x_seconds           => '{{count}} 秒',
        :less_than_x_minutes => '{{count}} 分以下',
        :x_minutes           => '{{count}} 分',
        :about_x_hours       => '約 {{count}} 時間',
        :x_days              => '{{count}} 日',
        :about_x_months      => '約 {{count}} ヶ月',
        :x_months            => '{{count}} ヶ月',
        :about_x_years       => '約　{{count}} 年',
        :over_x_years        => '{{count}} 年以上'
      }
    },

    # numbers
    :number => {
      :format => {
        :precision => 3,
        :separator => '.',
        :delimiter => ','
      },
      :currency => {
        :format => {
          :unit => '¥',
          :precision => 2,
          :format => '%u%n'
        }
      }
    },

    # Active Record
    :active_record => {
      :error => {
        :header_message => ["保存できませんでした {{object_name}}: 1 エラー", "保存できませんでした {{object_name}}: {{count}} エラー."],
        :message => "以下のメッセージを確認してください:"
      }
    },
    :active_record => {
      :error_messages => {
        :inclusion => "は、リストに含まれていません",
        :exclusion => "は、有効な値ではありません",
        :invalid => "は、妥当な値ではありません",
        :confirmation => "は、確認できません",
        :accepted  => "は、入力できません",
        :empty => "何も入力されていません",
        :blank => "空白です",
        :too_long => "長すぎます ({{count}}文字以下)",
        :too_short => "短すぎます ({{count}}文字以上)",
        :wrong_length => "桁数が合っていません({{count}}桁必要です)",
        :taken => "有効ではありません",
        :not_a_number => "数字ではありません",
        :greater_than => "{{count}}文字を超えて入力されています",
        :greater_than_or_equal_to => "{{count}}文字以上入力されています",
        :equal_to => "{{count}}と同値です",
        :less_than => "{{count}}文字未満です",
        :less_than_or_equal_to => "{{count}}文字以下で入力されています",
        :odd => "端数が入力されています",
        :even => "偶数が入力されています"
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
        :rails_standards_work => "Railsの標準フォーマット(Date::DATE_FORMATS)は有効です:"
      },
      :date_helper => {
        :date_time_title => "日付/時間 距離",
        :forms_title => "フォーム"
      },
      :index => {
        :others => "others",
        :introduction => "最近になり、{{sven_blog}} や {{sven_github}}によって、Railsにおけるインターナショナライゼーションやローカライゼーションを促進する多くの仕事がなされました。",
        :story_so_far => "このデモアプリは、あなたのアプリにおける大部分をローカライズするために、今まで実装されてきた特徴をどのように使用するかを示しています。"
      },
      :number_helper => {
        :note_one => "注意１: <code>number_to_phone</code> は、まだローカライズされていません。 そして、 おそらく今後もローカライズはされないのではと思います。- 少なくともコアには。 {{globalize}}の新しいバージョンのような新しいインターナショナライゼーションもしくは、ローカライゼーション・プラグインはこちらでお探しください。おそらく、彼らもプラグインをサポートすると思うので。",
        :note_two => "注意２: <code>number_to_currency</code>、<code>number_to_percentage</code>、 <code>number_to_human_size</code>は、すべて<code>number_with_precision</code>を内部的に使用しています。そして <code>number_with_precision</code>は、<code>number_with_delimiter</code>を内部的に使用しています。"
      },
      :setup => {
        :freezing_edge_and_adding => "Edgeを解凍し、localized_datesプラグインをインストールします。",
        :you_need_to_be_on_edge => "Rails i18nの特徴を使用するためには、Edge Rails上でアプリを動作させる必要があります:",
        :date_time_formats => "日付と時間のフォーマットには、{{localized_dates_link}}も併せてインストールする必要があります:",
        :config_locale => "ローカルの設定",
        :best_place => "自身のlocale設定ファイルを格納すべき、一番最適な場所は、私の意見では、<code>config/locales</code>が良いだろうと思います。localized_datesプラグインは、このディレクトリにen-USとde-AT、２つのlocaleファイルをコピーします。あなたは、それらを拡張もしくは、修正することもできますし、新しいローカルファイルを作る事もできます。",
        :locale => "こちらが、このデモアプリケーションで使用したデモ・localeファイルです。:",
        :defaults => "default locale かつ／もしくは、 localeをあなた自身の<code>environment.rb</code>かinitializerに設定します.",
        :locale_structure_title => "localeの構造について",
        :locale_structure_number => "お気づきの通り、localeの<code>:number</code>パート内部に、<code>:format</code>と<code>:currency</code>を定義しています。一般的に、ローカルファイルは階層構造になっています。 - つまり、通貨は数字ですし、パーセンテージも数字です、などなど。<code>:currency</code>は、 基本となる<code>:format</code>設定を上書きするか、(私たちのケースでは、<code>:precision</code>に３の代わりに２を設定しています。)それらを拡張して使用します(同じく、私たちのケースでは、２つの新しいオプション<code>:unit</code>と<code>:format</code>を追加しています。)。",
        :locale_structure_date_time => "同様のことが日付と時間にも言えます: 必要ならば、<code>:datetime</code>と<code>:time_with_zone</code>は、通常、依存している<code>:time</code>の設定の代わりに、それぞれの型を定義した明確なアドレスフォーマットを使用することもできます。しかしながら、たいていは、<code>:time</code>と同様のフォーマットになると思います。"   
      },
      :time_formats => {
        :rails_standards_work => "Railsの標準フォーマット(Time::DATE_FORMATS)は有効です:"
      },
        :ipe =>{
          :click => "クリック！"
      }
    }
  }
} 