Rails.application.routes.draw do
  devise_for :users
  namespace :manage do
    resources :folders
  end
end
