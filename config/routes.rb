Integrate::Application.routes.draw do

  resources :sponsors, only: :index

  resources :map, controller: :locations, only: :index

  resources :galleries, only: [:index, :show]

  namespace :admin do
    resources :galleries, except: :show
    resources :offsites, except: :show
    resources :sponsors, except: :show
  end

  get 'about',   to: 'static_pages#about',   as: 'about'
  get 'contact', to: 'static_pages#contact', as: 'contact'

  root to: 'static_pages#home'
end
