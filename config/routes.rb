Gurusorocaba::Application.routes.draw do

  devise_for :users
  devise_scope :user do
    get "/login"  => "devise/sessions#new"
    get "/logout" => "devise/sessions#destroy"
  end

  devise_for :administrators
  devise_scope :administrator do
    get "/admin"        => "devise/sessions#new"
    get "/admin/logout" => "devise/sessions#destroy"
  end

  resources :agendas, :path => "agenda", :only => :show do
    get "passados", :on => :collection, :action => :past, :as => :past
  end
  
  namespace :admin do 
    resources :agendas, :path => "agenda"
    get "users", :action => :index, :controller => :users
  end
  
  root :to => "index#index"

end