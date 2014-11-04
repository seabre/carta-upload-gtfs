Rails.application.routes.draw do
  resources :uploads, except: [:index, :show]

  root to: 'uploads#new'
end
