{ 
  :'pt-BR' => {
    # formatos de data e hora
    :date => {
      :formats => {
        :default      => "%d/%m/%Y",
        :short        => lambda { |date| "#{date.day} %b" },
        :long         => lambda { |date| "#{date.day} de %B de %Y" },
        :only_day     => "%e"
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
        :long         => lambda { |time| "%A, #{time.day} de %B de %Y, %H:%M hs" },
        :only_second  => "%S"
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
    :txt => {
      :main_title => "Localizando Rails",
      :app_name => "Aplicação de Demonstração",
      :sub_title => "como localizar sua aplicação com as novas funcionalidades de internacionalização do Rails",
      :contents => "Conteúdo",
      :menu => {
        :introduction => "Introdução",
        :about => "Sobre",
        :setup => "Configuração",
        :date_formats => "Formatos de Data",
        :time_formats => "Formatos de Hora"
      },
      :about => {
        :title => "Sobre esta aplicação de demonstração",
        :author => "Esta aplicação de demonstração foi escrita por {{mail_1}}.",
        :feedback => "Se tiver qualquer feedback, por favor sinta-se à vontade para me escrever. Também visite {{blog_href}} onde eu blogo regularmente sobre Rails e outras coisas.",
        :licence => "Esta aplicação de demonstração e seu conteúdo estão licenciados sobre a {{licence_href}}. Se quiser utilizar isso de maneiras proibidas pela licença, por favor entre em contato comigo e peça minha permissão."
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
        :others => "outros",
        :introduction => "Recentemente, muito trabalho foi feito por {{sven_blog}} e {{sven_github}} para facilitar futuras internacionalizações e localizações no Rails.",
        :story_so_far => "Esta aplicação de demonstração tenta demonstrar como usar as funcionalidades que foram implementadas até agora para localizar grandes partes de sua aplicação Rails."
      },
      :number_helper => {
        :note_one => "Nota: <code>number_to_phone</code> não foi localizado e provavelmente nunca será - pelo menos não no core. Procurem por novos plugins de internacionalização/localização para uma nova versão do {{globalize}} já que eles provavelmente suportarão coisas como essa.",
        :note_two => "Outra nota: <code>number_to_currency</code>, <code>number_to_percentage</code> e <code>number_to_human_size</code> todos usam <code>number_with_precision</code> internamente e <code>number_with_precision</code> usa <code>number_with_delimiter</code> internamente."
      },
      :setup => {
        :freezing_edge_and_adding => "Congelando Edge e instalando o plugin localized_dates",
        :you_need_to_be_on_edge => "Você precisa estar no Edge Rails para usar as funcionalidades de i18n (internacionalização):",
        :date_time_formats => "Para formatos de data e hora, você também precisa instalar o {{localized_dates_link}}:",
        :config_locale => "Configurando o local",
        :best_place => "O melhor lugar para colocar sua configuração local, na minha opinião, é em <code>config/locales</code>. O plugin localized_dates copiará dois locais, en-US e de-AT, em seu diretório. Você pode extender ou modificá-los e também criar novos locais.",
        :locale => "Aqui está o local de demonstração que foi usado para esta aplicação de demonstração:",
        :defaults => "Você também precisa configurar o local padrão e/ou local em seu seu <code>environment.rb</code> ou um inicializador.",
        :locale_structure_title => "Uma palavra sobre a estrutura de locais",
        :locale_structure_number => "Você deve ter notado que dentro da parte <code>:number</code> do local, nós definimos <code>:format</code> e <code>:currency</code>. Em geral, locais são estruturas hierárquicas - isto é, moedas são números, porcentagens são números, etc. <code>:currency</code> pode tanto se sobrepor à configuração <code>:format</code> básica (em nosso caso, nós configuramos <code>:precision</code> para 2 em vez de 3) ou extendê-la (adicionamos duas novas opções, <code>:unit</code> e <code>:format</code>).",
        :locale_structure_date_time => "O mesmo é válido para datas e horas: se for necessário, <code>:datetime</code> e <code>:time_with_zone</code> podem ser usados para resolver especificamente formatação de seus respectivos tipos em vez de depender das configurações para <code>:time</code>. Note, entretanto, que normalmente você quer usar as mesmas formatações que <code>:time</code>."           
      },
      :time_formats => {
        :rails_standards_work => "Formatos padrão Rails (Time::DATE_FORMATS) ainda funcionam:"
      }
    }
  }
}