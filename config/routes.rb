MoneyManager::Application.routes.draw do
  devise_for :users

  resources :expenses, format: false

  resource :dashboard, only: :show

  root :to => 'dashboards#show'
end
