Gurusorocaba::Application.routes.draw do

  devise_for :users do
    get "/login" => "devise/sessions#new"
    get "/logout" => "devise/sessions#destroy"
  end
  
  devise_for :administrators do
    get "/admin" => "devise/sessions#new"
    get "/admin/logout" => "devise/sessions#destroy"
  end
  
  namespace :admin do 
    resources :agendas, :path => "agenda"
    get "users", :action => :index, :controller => :users
  end
  
  root :to => "index#index"

end