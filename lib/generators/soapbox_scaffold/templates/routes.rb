Rails.application.routes.draw do |map|
    
  resources :<%= plural_name %>, :only => [:index, :show]

  namespace :admin do
     resources :<%= plural_name %>
  end
  
end