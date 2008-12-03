# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def show_locale_files
    output = ''
    Dir["#{LOCALES_DIRECTORY}#{I18n.locale}.{rb,yml}"].sort.each do |locale_file|
      output << "\n#{locale_file.sub(RAILS_ROOT + "/", "")}:\n\n"
      counter, lineWidth = 1, 80
      lines = *open(locale_file).map(&:rstrip).each do |line|
        output << "#{sprintf('%3d', counter)}: #{line}\n"
        counter += 1
      end
    end
    output
  end
end
