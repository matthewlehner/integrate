Integrate::Application.routes.draw do

  resources :map, controller: :locations, only: :index

  resources :galleries, only: [:index, :show]

  namespace :admin do
    resources :galleries, except: :show
    resources :offsites
  end

  get 'about', to: 'static_pages#about', as: 'about'

  root to: 'static_pages#home'
end
