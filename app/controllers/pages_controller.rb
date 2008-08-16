class PagesController < ApplicationController
  
  def update_value
    render :text => params[:value]
  end
  
end
