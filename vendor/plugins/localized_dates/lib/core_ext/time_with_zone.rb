ActiveSupport::TimeWithZone.class_eval do
  def to_s(format = :default)
    return utc.to_s(format) if format == :db
    formats = ::Time::DATE_FORMATS
    formatter = formats[format]

    unless formatter
      default_formatters = I18n.translate(:'time.formats', :raise => true) rescue {}
      twz_formatters = I18n.translate(:'time.time_with_zone.formats', :raise => true) rescue {}
      formatters = default_formatters.merge(twz_formatters)
      formatter  = formatters[format]
    end

    format_to_localize = formatter.respond_to?(:call) ? formatter.call(self) : formatter
    I18n.localize(self, :format => format_to_localize)
  end
end