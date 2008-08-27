# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'fc86fd4bfda299c3b079191a8f948013'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
  
  before_filter :set_locale
  
  def set_locale
    locale = params[:locale] || 'gibberish'
    I18n.locale = locale
    I18n.populate do 
      require "#{RAILS_ROOT}/config/locales/#{locale}.rb"
    end
  end
end
