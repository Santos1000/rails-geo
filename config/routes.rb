Rails.application.routes.draw do
  root to: 'companies#about'
  # get 'index', to: 'companies#index'
  get 'about', to: 'companies#about'
  get '/index' => 'companies#index'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
