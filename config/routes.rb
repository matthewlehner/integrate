Integrate::Application.routes.draw do
  resources :galleries, only: [:index, :show]

  get 'about', to: 'static_pages#about', as: 'about'

  root to: 'static_pages#home'
end
