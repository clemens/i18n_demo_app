{
  :'es-AR' => {

    :date => {
      :formats => {
        :default      => "%e/%m/%Y",
        :short        => "%e %b",
        :long         => "%e de %B de %Y",
        :only_day     => "%e"
      },
      :day_names      => %w(Domingo Lunes Martes Miércoles Jueves Viernes Sábado),
      :abbr_day_names => %w(Dom Lun Mar Mie Jue Vie Sab),
      :month_names    => [nil] + %w(Enero Febrero Marzo Abril Mayo Junio Julio Agosto Setiembre Octubre Noviembre Diciembre),
      :abbr_month_names => [nil] + %w(Ene Feb Mar Abr May Jun Jul Ago Set Oct Nov Dic),
      :order          => [:day, :month, :year]
    },
    :time => {
      :formats => {
        :default      => "%A, %e de %B de %Y, %H:%M hs",
        :time         => "%H:%M hs",
        :short        => "%e/%m, %H:%M hs",
        :long         => "%A, %e de %B de %Y, %H:%M hs",
        :only_second  => "%S"
      },
      :datetime => {
        :formats => {
          :default => "%d/%m/%Y-%dT%H:%M:%S%Z"
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
    # date helper distancia en palabras
    #NOTE: Pluralization rules have changed! Rather than simply submitting an array, i18n now allows for a hash with the keys:
    # :zero, :one & :other   - FUNKY (but a pain to find...)!
    :datetime => {
      :distance_in_words => {
        :half_a_minute       => 'medio minuto',
        :less_than_x_seconds => {:zero => 'menos de 1 segundo', :one => '1 segundo', :other => '{{count}} segundos'},
        :x_seconds           => {:one => '1 second', :other => '{{count}} seconds'},
        :less_than_x_minutes => {:zero => 'menos de 1 minuto', :one => '1 minuto', :other => '{{count}} minutos'},
        :x_minutes           => {:one => "1 minuto", :other => "{{count}} minutos"},
        :about_x_hours       => {:one => 'aproximadamente 1 hora', :other => '{{count}} horas'},
        :x_days              => {:one => '1 día', :other => '{{count}} días'},
        :about_x_months      => {:one => 'aproximandamente 1 mes', :other => '{{count}} mes'},
        :x_months            => {:one => '1 month', :other => '{{count}} mes'},
        :about_x_years       => {:one => 'aproximadamente 1 año', :other => '{{count}} años'},
        :over_x_years        => {:one => 'más de 1 año', :other => '{{count}} años'}
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
          :unit => '$',
          :precision => 2,
          :format => '%u %n'
        }
      }
    },

    # Active Record
    :active_record => {
      :error => {
        :header_message => ["{{object_name}} no pudo guardarse: 1 error", "{{object_name}}: {{count}} errores."],
        :message => "Por favor revise los campos siguientes:"
      }
    },
    :active_record => {
      :error_messages => {
        :inclusion => "no está incluido en la lista",
        :exclusion => "no está disponible",
        :invalid => "no es válido",
        :confirmation => "no coincide con la confirmación",
        :accepted  => "debe ser aceptado",
        :empty => "no puede estar vacío",
        :blank => "no puede estar en blanco",
        :too_long => "es demasiado largo (no más de {{count}} caracteres)",
        :too_short => "es demasiado corto (no menos de {{count}} caracteres)",
        :wrong_length => "no tiene la longitud correcta (debe ser de {{count}} caracteres)",
        :taken => "no está disponible",
        :not_a_number => "no es un número",
        :greater_than => "debe ser mayor a {{count}}",
        :greater_than_or_equal_to => "debe ser mayor o igual a {{count}}",
        :equal_to => "debe ser igual a {{count}}",
        :less_than => "debe ser menor que {{count}}",
        :less_than_or_equal_to => "debe ser menor o igual que {{count}}",
        :odd => "debe ser par",
        :even => "debe ser impar"
      }
    },
    :txt => {
      :main_title => "Localización en Rails",
      :app_name => "Aplicación de Demostración",
      :sub_title => "Localizar su aplicación con las nuevas funciones de i18n de Rails",
      :contents => "Contenidos",
      :menu => {
        :introduction => "Introducción",
        :about => "Acerca de",
        :setup => "Configuración",
        :date_formats => "Formatos de Fecha",
        :time_formats => "Formatos de Hora"
      },
      :about => {
        :title => "Acerca de esta aplicación",
        :author => "Esta aplicación fué escrita por {{mail_1}}.",
        :feedback => "Si tienes algún comentario, por favor escríbeme.También puedes visitar {{blog_href}} donde hago mis comentarios acerca de Rails y otras cosas.",
        :licence => "Esta aplicación y todo su contenido está licenciado bajo la {{licence_href}}. Si quieres darle un uso prohibido por la licencia, por favor contáctame y pide mi permiso."
      },
      :active_record => {
        :too_lazy => "No hay ejemplos aquí ya que me da flojera pensar en atributos para mostrar <strong>todos</strong> los mensajes personalizados de error. ;-)",
        :easy_to_understand => "De cualquier modo, es bastante fácil de entender."
      },
      :date_formats => {
        :rails_standards_work => "Los formatos estándar de Rails (Date::DATE_FORMATS) siguen funcionando:"
      },
      :date_helper => {
        :date_time_title => "Distancia entre Fechas u Horas",
        :forms_title => "Formularios"
      },
      :index => {
        :others => "otros",
        :introduction => "Últimamente, {{sven_blog}} y {{sven_github}} han trabajado mucho en facilitar la futura internacionalización y localización de Rails.",
        :story_so_far => "Esta aplicación intenta demostrarles cómo pueden usar las características que han sido implementadas hasta ahora para localizar grandes porciones de su aplicación en Rails."
      },
      :number_helper => {
        :note_one => "Nota: <code>number_to_phone</code> no ha sido localizado todavía y probablemente nunca lo será - al menos no en core. Puedes buscar nuevos plugins de internacionalización/localización como una nueva versión de {{globalize}} ya que ellos probablemente soporten cosas como esa.",
        :note_two => "Otra Nota: <code>number_to_currency</code>, <code>number_to_percentage</code> y <code>number_to_human_size</code> usan <code>number_with_precision</code> internamente y <code>number_with_precision</code> usa <code>number_with_delimiter</code> internamente."
      },
      :setup => {
        :freezing_edge_and_adding => "Fijando Edge e instalando el plugin localized_dates",
        :you_need_to_be_on_edge => "Necesitas estar en Rails Edge para poder usar las características de i18n de Rails:",
        :date_time_formats => "Para los formatos de fecha y hora, también es necesario el {{localized_dates_link}}:",
        :config_locale => "Configurando el local",
        :best_place => "En mi opinión, el mejor lugar para colocar las configuraciones de locales es el directorio <code>config/locales</code>. El plugin localized_dates copiará dos locales, en-US y de-AT, en este directorio. Puedes extender o modificar cualquiera de ellos y también crear nuevos.",
        :locale => "Aqué está el local de demostración que fué utilizado para esta aplicación:",
        :defaults => "También debes definir el locale por defecto y/o el local en tu <code>environment.rb</code> o en un inicializador.",
        :locale_structure_title => "Acerca de la estructura de los locales.",
        :locale_structure_number => "Puedes haber notado que dentro de la sección <code>:number</code>, hemos definido <code>:format</code> y <code>:currency</code>. En general, los locales están estructurados jerárquicamente, por ejemplo: las monedas son números, los porcentajes son números, etc. <code>:currency</code> puede sobreescribir la configuración básica de <code>:format</code> (en nuestro caso, hemos definido <code>:precision</code> a 2 en lugar de 3) o extenderlas (hemos agregado dos nuevas opciones, <code>:unit</code> y <code>:format</code>).",
        :locale_structure_date_time => "Lo mismo puede decirse para las fechas y horas: Si es necesario, <code>:datetime</code> y <code>:time_with_zone</code> pueden ser usados para especificar el formato de sus tipos respectivos, en lugar de simplemente reflejar la configuración de <code>:time</code>. Nótese, sin embargo, que usualmente querrá usarse el mismo formato de <code>:time</code>."
      },
      :time_formats => {
        :rails_standards_work => "Los formatos estándar de Rails (Time::DATE_FORMATS) siguen funcionando:"
      }
    }
  }
}
