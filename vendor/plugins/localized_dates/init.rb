require 'localized_dates'

# load all locales from config/locales
locales_dir = File.join(RAILS_ROOT, 'config', 'locales')
Dir["#{locales_dir}/*.rb"].uniq.each do |locale|
  require locale
end

puts '** [localized_dates] locales loaded from config/locales.'

# set default locale to en-US
I18n.default_locale = 'en-US'