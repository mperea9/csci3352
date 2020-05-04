VaxGame::Application.routes.draw do
  resources :scores, only: [:new, :create]

  root to: 'static_pages#home'

  match '/home', to: 'static_pages#home', :via => [:get, :post]
  match '/tour', to: 'static_pages#tour', :via => [:get, :post]
  match '/help', to: 'static_pages#faq', :via => [:get, :post]
  match '/faq', to: 'static_pages#faq', :via => [:get, :post]
  match '/about', to: 'static_pages#faq', :via => [:get, :post]
  match '/contact', to: 'static_pages#faq', :via => [:get, :post]
  match '/herdImmunity', to: 'static_pages#herdImmunity', :via => [:get, :post]
  match '/herdimmunity', to: 'static_pages#herdImmunity', :via => [:get, :post]
  match '/scenario', to: 'static_pages#scenarioSelect', :via => [:get, :post]
  match '/scenarioGame', to: 'static_pages#scenarioGame', :via => [:get, :post]
  match '/scores', to: 'scores#new', :via => [:get, :post]

  match '/game', to: 'static_pages#game', :via => [:get, :post]

end
