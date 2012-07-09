Integrate::Application.routes.draw do
  get 'about', to: 'static_pages#about', as: 'about'

  root to: 'static_pages#home'
end
