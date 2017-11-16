Rails.application.routes.draw do
  resources :pictures do
    resources :comments
  end
  devise_for :users

  root to: 'pictures#index'  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
