{
  :'nl' => {
    :date => {
      :formats => {
        :default      => "%d/%m/%Y",
        :short        => "%e %b",
        :long         => "%e %B %Y",
        :long_ordinal => lambda { |date| "#{date.day}e van %B %Y" },
        :only_day     => "%e"
      },
      :day_names => %w(Zondag Maandag Dinsdag Woensdag Donderdag Vrijdag Zaterdag),
      :abbr_day_names => %w(Zo Ma Di Wo Do Vr Za),
      :month_names => [nil] + %w(Januari Februari Maart April Mei Juni Juli Augustus September Oktober November December),
      :abbr_month_names => [nil] + %w(Jan Feb Mrt Apr Mei Jun Jul Aug Sep Okt Nov Dec),
      :order => [:day, :month, :year]
    },
    :time => {
      :formats => {
        :default      => "%a %b %d %H:%M:%S %Z %Y",
        :time         => "%H:%M",
        :short        => "%d %b %H:%M",
        :long         => "%d %B %Y %H:%M",
        :long_ordinal => lambda { |time| "#{time.day}e van %B %Y %H:%M" },
        :only_second  => "%S"
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
      :am => %q('s ochtends),
      :pm => %q('s middags)
    },
    :datetime => {
      :distance_in_words => {
        :half_a_minute       => 'een halve minuut',
        :less_than_x_seconds => {:zero => 'minder dan een seconde', :one => '1 seconde', :other => '{{count}} secondes'},
        :x_seconds           => {:one => '1 seconde', :other => '{{count}} secondes'},
        :less_than_x_minutes => {:zero => 'minder dan een minuut', :one => '1 minuut', :other => '{{count}} minuten'},
        :x_minutes           => {:one => "1 minuut", :other => "{{count}} minuten"},
        :about_x_hours       => {:one => 'ongeveer 1 uur', :other => '{{count}} uren'},
        :x_days              => {:one => '1 dag', :other => '{{count}} dagen'},
        :about_x_months      => {:one => 'ongeveer 1 maand', :other => '{{count}} maanden'},
        :x_months            => {:one => '1 maand', :other => '{{count}} maanden'},
        :about_x_years       => {:one => 'ongeveer 1 jaar', :other => '{{count}} jaren'},
        :over_x_years        => {:one => 'langer dan 1 jaar', :other => '{{count}} jaren'}
      }
    },
    :number => {
      :format => {
        :precision => 2,
        :separator => ',',
        :delimiter => '.'
      },
      :currency => {
        :format => {
          :unit => '€',
          :precision => 2,
          :format => '%u %n'
        }
      }
    },

    # Active Record
    :active_record => {
      :error => {
        :header_message => ["Kon dit {{object_name}} object niet opslaan: 1 fout.", "Kon dit {{object_name}} niet opslaan: {{count}} fouten."],
        :message => "Controleer alstublieft de volgende velden:"
      }
    },
    :active_record => {
      :error_messages => {
        :inclusion => "is niet in de lijst opgenomen",
        :exclusion => "is niet beschikbaar",
        :invalid => "is ongeldig",
        :confirmation => "komt niet met z'n bevestiging overeen",
        :accepted  => "moet worden geaccepteerd",
        :empty => "moet opgegeven zijn",
        :blank => "moet opgegeven zijn",
        :too_long => "is te lang (niet meer dan {{count}} karakters)",
        :too_short => "is te kort (niet minder dan {{count}} karakters)",
        :wrong_length => "heeft niet de juiste lengte (moet precies {{count}} karakters zijn)",
        :taken => "is niet beschikbaar",
        :not_a_number => "is niet een getal",
        :greater_than => "moet groter zijn dan {{count}}",
        :greater_than_or_equal_to => "moet groter of gelijk zijn aan {{count}}",
        :equal_to => "moet gelijk zijn aan {{count}}",
        :less_than => "moet minder zijn dan {{count}}",
        :less_than_or_equal_to => "moet minder of gelijk zijn aan {{count}}",
        :odd => "moet oneven zijn",
        :even => "moet even zijn"
      }
    },
    :txt => {
      :main_title => "Rails lokaliseren",
      :app_name => "Demo Applicatie",
      :sub_title => "hoe u uw applicatie kunt lokaliseren met de nieuwe i18n features van Rails",
      :contents => "Inhoud",
      :menu => {
        :introduction => "Introductie",
        :about => "Over deze applicatie",
        :setup => "Installatie",
        :date_formats => "Datum formaten",
        :time_formats => "Tijd formaten"
      },
      :about => {
        :title => "Over deze demo applicatie",
        :author => "Deze demo applicatie is ontwikkeld door {{mail_1}}.",
        :feedback => "Indien u feedback heeft, schroom dan niet contact met mij op te nemen via de mail. Bezoek ook {{blog_href}} waar ik regelmatig over Rails en andere dingen schrijf.",
        :licence => "Deze demo applicatie en al zijn inhoud zijn gelicensieerd onder de {{licence_href}}. Indien u het wilt gebruiken op een manier dat in strijd is met de licentie, neem dan contact met mij op om toestemming te vragen."
      },
      :active_record => {
        :too_lazy => "Helaas zijn hier geen voorbeelden te vinden aangezien ik te lui ben om na te denken over attributen om <strong>alle</strong> handmatige foutmeldingen weer te geven. ;-)",
        :easy_to_understand => "Het is daarentegen best eenvoudig te begrijpen."
      },
      :date_formats => {
        :rails_standards_work => "Rails standaard formaten (Date::DATE_FORMATS) werken nog:"
      },
      :date_helper => {
        :date_time_title => "Datum/Tijd afstand",
        :forms_title => "Formulieren"
      },
      :index => {
        :others => "anderen",
        :introduction => "De afgelopen tijd is veel werk verzet door {{sven_blog}} en {{sven_github}} om toekomstige internationalisatie en localisatie van Rails te faciliteren.",
        :story_so_far => "Deze demo applicatie heeft als doel u te laten zien hoe u de tot op heden geimplementeerde features kunt gebruiken om grote delen van uw Rails applicatie te lokaliseren."
      },
      :number_helper => {
        :note_one => "Opmerking: <code>number_to_phone</code> is nog niet gelocaliseerd en dit zal in core ook zo blijven. Hou een oogje op nieuwe internationalisatie/lokalisatie plugins zoals een nieuwe versie van {{globalize}} aangezien deze waarschijnlijk wel dat soort dingen zullen ondersteunen.",
        :note_two => "Nog een opmerking: <code>number_to_currency</code>, <code>number_to_percentage</code> en <code>number_to_human_size</code> gebruiken allemaal <code>number_with_precision</code> intern en <code>number_with_precision</code> gebruikt <code>number_with_delimiter</code> intern."
      },
      :setup => {
        :freezing_edge_and_adding => "Het vriezen van Edge Rails en het installeren van de localized_dates plugin",
        :you_need_to_be_on_edge => "U dient gebruik te maken van Edge Rails om gebruik te kunnen maken van de Rails 18n features:",
        :date_time_formats => "Voor datum en tijd formaten dient u ook {{localized_dates_link}} te installeren:",
        :config_locale => "Lokalisering configureren",
        :best_place => "De meest geschikte plek om uw lokalisatie configuratie te plaatsen is in mijn mening de map <code>config/locales</code>. De localized_dates plugin zal twee lokalisaties - en-US en de-AT te verstaan - in deze map kopieren. U kunt deze uitbreiden of aanpassen en natuurlijk ook nieuwe lokalisaties creëeren.",
        :locale => "Hier is de demo lokalisatie welke gebruikt was door deze demo applicatie:",
        :defaults => "U dient ook een standaard lokalisatie en/of lokalisatie in uw <code>environment.rb</code> of een initializer in te stellen.",
        :locale_structure_title => "De structuur van lokalisaties",
        :locale_structure_number => "Het zal u misschien opgevallen zijn dat binnen de <code>:number</code> gedeelte van de lokalisatie we <code>:format</code> en <code>:currency</code> hebben gedefinieerd. Over het algemeen zijn lokalisaties hierarchisch gestructureerd, i.e. een munteenheid is een getal, percentages zijn getallen, etc. <code>:currency</code> kan of de basis <code>:format</code> instellingen overschrijven (in ons geval, zetten we <code>:precision</code> op 2 in plaats van 3) of ze uitbreiden (we voegen twee nieuwe opties toe, te verstaan <code>:unit</code> en <code>:format</code>).",
        :locale_structure_date_time => "Hetzelfde gaat op voor datums en tijden: indien noodzakelijk geacht kunnen <code>:datetime</code> en <code>:time_with_zone</code> gebruikt worden om specifieke formaten aan te pakken van hun respectievelijke typen in plaats van enkel uit te gaan van de instellingen voor <code>:time</code>. Let daarbij op dat u normaal gesproken formaten wilt gebruiken die wel degelijk hetzelfde zijn als die van <code>:time</code>."   
      },
      :time_formats => {
        :rails_standards_work => "Rails standaard formaten (Time::DATE_FORMATS) werken nog:"
      }
    }
  }
}