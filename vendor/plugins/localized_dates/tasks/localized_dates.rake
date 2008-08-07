desc 'Displays a list of all locales installed in config/locales'
task :locales do
  locales_dir = File.join(RAILS_ROOT, 'config', 'locales')
  Dir["#{locales_dir}/*.rb"].uniq.each do |locale|
    puts File.basename(locale, '.rb')
  end
end