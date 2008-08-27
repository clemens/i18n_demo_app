class PagesController < ApplicationController
  
  def update_value
    render :text => params[:value]
  end
  
  def setup
    @locale_file = File.new("#{RAILS_ROOT}/config/locales/#{I18n.locale}.rb", "r")
  end
  
end
