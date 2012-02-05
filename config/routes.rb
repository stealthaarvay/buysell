Buysell::Application.routes.draw do

  root :to => "home#index"

  match "auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => "signout"

  match "/dashboard" => "dashboard#index", :as => "dash"

  # match ':controller(/:action(/:id(.:format)))'
end
