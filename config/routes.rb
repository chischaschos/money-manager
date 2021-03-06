MoneyManager::Application.routes.draw do
  devise_for :users

  scope module: :api do
    resources :expenses, format: false
    resources :income_sources, format: false
  end

  resource :dashboard, only: :show

  root :to => 'dashboards#show'
end
