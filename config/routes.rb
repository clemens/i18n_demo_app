ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'pages', :action => 'index'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
