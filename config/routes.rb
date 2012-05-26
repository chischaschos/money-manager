MoneyManager::Application.routes.draw do
  resources :expenses

  get "welcome/index"

  devise_for :users
  root :to => 'welcome#index'
end
