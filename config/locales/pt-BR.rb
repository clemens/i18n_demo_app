I18n.backend.store_translations :'pt-BR', {
  # formatos de data e hora
  :date => {
    :formats => {
      :default      => "%d/%m/%Y",
      :short        => lambda { |date| "#{date.day} %b" },
      :long         => lambda { |date| "#{date.day} de %B de %Y" }
    },
    :day_names => %w(Domingo Segunda Terça Quarta Quinta Sexta Sábado),
    :abbr_day_names => %w(Do Se Te Qa Qi Sx Sa),
    :month_names => [nil] + %w(Janeiro Fevereiro Março Abril Maio Junho Julho Agosto Setembro Outubro Novembro Dezembro),
    :abbr_month_names => [nil] + %w(Jan Fev Mar Abr Mai Jun Jul Ago Set Out Nov Dez),
    :order => [:day, :month, :year]
  },
  :time => {
    :formats => {
      :default      => lambda { |time| "%A, #{time.day} de %B de %Y, %H:%M hs" },
      :time         => "%H:%M hs",
      :short        => lambda { |time| "#{time.day}/%m, %H:%M hs" },
      :long         => lambda { |time| "%A, #{time.day} de %B de %Y, %H:%M hs" }
    },
    :am => '',
    :pm => ''
  },

  # date helper distanci em palavras
  :datetime => {
    :distance_in_words => {
      :half_a_minute       => 'meio minuto',
      :less_than_x_seconds => ['menos de 1 segundo', 'menos de {{count}} segundos'],
      :x_seconds           => ['1 segundo', '{{count}} segundos'],
      :less_than_x_minutes => ['menos de um minuto', 'menos de {{count}} minutos'],
      :x_minutes           => ['1 minuto', '{{count}} minutos'],
      :about_x_hours       => ['aproximadamente 1 hora', 'aproximadamente {{count}} horas'],
      :x_days              => ['1 dia', '{{count}} dias'],
      :about_x_months      => ['aproximadamente 1 mês', '{{count}} meses'],
      :x_months            => ['1 mês', '{{count}} meses'],
      :about_x_years       => ['aproximadamente 1 ano', '{{count}} anos'],
      :over_x_years        => ['mais de 1 ano', '{{count}} anos']
    }
  },

  # numeros
  :number => {
    :format => {
      :precision => 3,
      :separator => ',',
      :delimiter => '.'
    },
    :currency => {
      :format => {
        :unit => 'R$',
        :precision => 2,
        :format => '%u %n'
      }
    }
  },

  # Active Record
  :active_record => {
    :error => {
      :header_message => ["{{object_name}} não pôde ser salvo: 1 erro", "{{object_name}} não pôde ser salvo: {{count}} erros."],
      :message => "Por favor, cheque os seguintes campos:"
    }
  },
  :active_record => {
    :error_messages => {
      :inclusion => "não está incluso na lista",
      :exclusion => "não está disponível",
      :invalid => "não é válido",
      :confirmation => "não bate com a confirmação",
      :accepted  => "precisa ser aceito",
      :empty => "não pode ser vazio",
      :blank => "não pode ser vazio",
      :too_long => "é muito longo (não mais do que {{count}} caracteres)",
      :too_short => "é muito curto (não menos do que {{count}} caracteres)",
      :wrong_length => "não é do tamanho correto (precisa ter {{count}} caracteres)",
      :taken => "não está disponível",
      :not_a_number => "não é um número",
      :greater_than => "precisa ser maior do que {{count}}",
      :greater_than_or_equal_to => "precisa ser maior ou igual a {{count}}",
      :equal_to => "precisa ser igual a {{count}}",
      :less_than => "precisa ser menor do que {{count}}",
      :less_than_or_equal_to => "precisa ser menor ou igual a {{count}}",
      :odd => "precisa ser ímpar",
      :even => "precisa ser par"
    }
  },
  
  # Plugin in_place_editing
  :in_place_editing => {
    :text => {
      :cancel => "cancelar",
      :loading => "carregando...",
      :save => "salvar",
      :saving => "salvando..."
    }
  },
  :txt => {
    :main_title => "Localizando Rails",
    :app_name => "Aplicação de Demonstração",
    :sub_title => "como localizar sua aplicação com as novas funcionalidades de internacionalização do Rails",
    :contents => "Conteúdo",
    :menu => {
      :introduction => "Introdução",
      :setup => "Configuração",
      :date_formats => "Formatos de Data",
      :time_formats => "Formatos de Hora"
    },
    :about => {
      :title => "Sobre esta aplicação de demonstração",
      :author => "Esta aplicação de demonstração foi escrita por <%= mail_to \"clemens@railway.at\", \"Clemens Kofler\" %> e traduzida para português brasileiro por <%= mail_to \"fabioakita@gmail.com\", \"Fabio Akita\" %>.",
      :feedback => "Se tiver qualquer feedback, por favor sinta-se à vontade para me escrever. Também visite  <%= link_to \"www.railway.at\", \"http://www.railway.at\" %> onde eu blogo regularmente sobre Rails e outras coisas.",
      :licence => "Esta aplicação de demonstração e seu conteúdo estão licenciados sobre a <%= link_to \"Creative Commons Attribution Noncommercial Share Alike License\", \"http://creativecommons.org/licenses/by-nc-sa/2.0/at/\" %>. Se quiser utilizar isso de maneiras proibidas pela licença, por favor entre em contato comigo e peça minha permissão."
    },
    :active_record => {
      :too_lazy => "Nenhum exemplo aqui já que sou muito preguiçoso para pensar em atributos para mostrar <strong>todas</strong> as mensagens customizadas de erro. ;-)",
      :easy_to_understand => "Mas é bem fácil de entender.."
    }, 
    :date_formats => {
      :rails_standards_work => "Formatos padrão do Rails (Date::DATE_FORMATS) ainda funcionam:"
    },
    :date_helper => {
      :date_time_title => "Distância de Data/Hora",
      :forms_title => "Formulários"
    },
    :index => {
      :introduction => "Recentemente, muito trabalho foi feito por <%= link_to \"Sven Fuchs\", \"http://www.artweb-design.de/\" %> e <%= link_to \"others\", \"http://github.com/svenfuchs/i18n/tree/48ff00d2af07693171ec341500537b30e23e83bc/README.textile\" %> para facilitar futuras internacionalizações e localizações no Rails.",
      :story_so_far => "Esta aplicação de demonstração tenta demonstrar como usar as funcionalidades que foram implementadas até agora para localizar grandes partes de sua aplicação Rails."
    },
    :number_helper => {
      :note_one => "Nota: <code>number_to_phone</code> não foi localizado e provavelmente nunca será - pelo menos não no core. Procurem por novos plugins de internacionalização/localização para uma nova versão do  <%= link_to \"Globalize\", \"http://globalize.rubyforge.org/\" %> já que eles provavelmente suportarão coisas como essa.",
      :note_two => "Outra nota: <code>number_to_currency</code>, <code>number_to_percentage</code> e <code>number_to_human_size</code> todos usam <code>number_with_precision</code> internamente e <code>number_with_precision</code> usa <code>number_with_delimiter</code> internamente."
    }
  }
}