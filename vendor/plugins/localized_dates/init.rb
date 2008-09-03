require 'localized_dates'

# load all locales from config/locales
locales_dir = File.join(RAILS_ROOT, 'config', 'locales')
Dir["#{locales_dir}/*.{rb,yml}"].uniq.each do |locale_file|
  puts "** [localized_dates] loading file #{locale_file}"
  I18n.load_translations(locale_file)
end

puts '** [localized_dates] locales loaded from config/locales.'

# set default locale to en-US
I18n.default_locale = 'en-US'