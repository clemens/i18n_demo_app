::Date.class_eval do
  def to_formatted_s(format = :default)
    formats = ::Date::DATE_FORMATS
    formatter = formats[format]

    unless formatter
      formatters = I18n.translate(:'date.formats', :raise => true) rescue {}
      formatter  = formatters[format]
    end

    format_to_localize = formatter.respond_to?(:call) ? formatter.call(self) : formatter
    I18n.localize(self, :format => format_to_localize)
  end
  alias_method :to_s, :to_formatted_s
end

::Date.const_set('DATE_FORMATS', {
  :db           => "%Y-%m-%d",
  :number       => "%Y%m%d",
  :rfc822       => "%e %b %Y"
})