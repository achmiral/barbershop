Rails.application.routes.draw do
  
  namespace :site do
    get 'home/index'
  end

  namespace :backoffice do
    get 'dashboard/index'
  end

  devise_for :users, :controllers => { registrations: 'registrations' }

  root to: "site/home#index"
end
