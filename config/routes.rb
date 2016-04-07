Rails.application.routes.draw do
  devise_for :users
  resources :restaurants do 
    resources :reviews, only: [:new, :create] 
  end
  root to: 'welcome#home'
end
