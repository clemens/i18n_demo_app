::DateTime.class_eval do
  def to_formatted_s(format = :default)
    formats = ::Time::DATE_FORMATS
    formatter = formats[format]

    unless formatter
      default_formatters = I18n.translate(:'time.formats', :raise => true) rescue {}
      datetime_formatters = I18n.translate(:'time.datetime.formats', :raise => true) rescue {}
      formatters = default_formatters.merge(datetime_formatters)
      formatter  = formatters[format]
    end

    format_to_localize = formatter.respond_to?(:call) ? formatter.call(self) : formatter
    I18n.localize(self, :format => format_to_localize)
  end
  alias_method :to_s, :to_formatted_s
end