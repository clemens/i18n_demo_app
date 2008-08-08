# You only need this if you run Edge Rails older than this revision: 
#   http://github.com/rails/rails/commit/105093f90728f81268367bd52581fccfa165f170
#
# ActionView::Helpers::DateHelper.class_eval do
#   def select_date_with_localization(date = Date.current, options = {}, html_options = {})
#     options[:order] ||= I18n.translate(:'date.order')
#     select_date_without_localization(date, options, html_options)
#   end
#   alias_method_chain :select_date, :localization
#
#   def select_datetime_with_localization(datetime = Time.current, options = {}, html_options = {})
#     options[:order] ||= I18n.translate(:'date.order')
#     select_datetime_without_localization(datetime, options, html_options)
#   end
#   alias_method_chain :select_datetime, :localization
# end