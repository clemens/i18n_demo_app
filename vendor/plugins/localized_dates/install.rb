require 'fileutils'

locales_dir = File.join(RAILS_ROOT, 'config', 'locales')
Dir.mkdir(locales_dir) unless File.directory?(locales_dir)

locales_template_dir = File.join(File.dirname(__FILE__), 'lib', 'templates', 'locales')
['en-US.rb', 'en-US.yml', 'de-AT.yml'].each do |locale|
  FileUtils.cp(File.join(locales_template_dir, locale), File.join(locales_dir, locale))
end

puts 'Copied locales to config/locales.'