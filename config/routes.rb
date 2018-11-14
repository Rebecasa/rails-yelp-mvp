Rails.application.routes.draw do
  get root to: 'restaurants#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, except: [:destroy, :update, :edit] do
    resources :reviews, only: [:create, :new]
  end
end
