# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def show_source(file)
    output = ''
    counter, lineWidth = 1, 80
    while(line = @locale_file.gets)
      output << "#{sprintf('%3d', counter)}: #{line}"
      counter += 1
    end
    output
  end
end
