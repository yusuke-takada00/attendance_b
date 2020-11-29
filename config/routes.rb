Rails.application.routes.draw do
  root 'static_pages#top'

  get '/login', to: 'sessions#new'
  
  
  resources :attendances
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
