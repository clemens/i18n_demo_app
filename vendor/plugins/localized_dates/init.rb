require 'localized_dates'

# load all locales from config/locales
locales_dir = File.join(RAILS_ROOT, 'config', 'locales')

#TODO: clean up so that only responds to current locale - load order dependent.
# load all ruby and YML hash locales
Dir["#{locales_dir}/*.rb", "#{locales_dir}/*.yml"].uniq.each do |locale|
  I18n.load_translations locale
end
puts '** [localized_dates] locales loaded from config/locales.'

# set default locale to en-US
I18n.default_locale = 'en-US'