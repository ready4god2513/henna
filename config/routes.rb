Henna::Application.routes.draw do
  resources :pages
  root :to => "landing#index"
  
  namespace :admin do
    resources :pages
  end
  
end