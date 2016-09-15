Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => 'static_pages#home'
  devise_for :users
  resources :users do
    resources :images
  end
end


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
