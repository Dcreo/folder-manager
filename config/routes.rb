Rails.application.routes.draw do
  namespace :manage do
    resource :folders
  end
end
