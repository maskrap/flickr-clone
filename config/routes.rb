Rails.application.routes.draw do
  root :to => 'sessions#new'
  devise_for :users

  resources :profile do
    resources :images do
    end
  end
end


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
