Rails.application.routes.draw do
  root to: 'companies#index'
  get 'show', to: 'companies#show'
  get 'about', to: 'companies#about'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
