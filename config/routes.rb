MoneyManager::Application.routes.draw do
  devise_for :users

  resources :expenses

  root :to => 'expenses#index'
end
