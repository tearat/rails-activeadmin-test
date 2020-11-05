Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :shops, only: [:index, :show]
  resources :items, only: [:index, :show]
end
