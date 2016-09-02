Rails.application.routes.draw do

  devise_for :users
  namespace :api, defaults: { format: :json } do
    resources :families, only: [:create, :show, :update]
    resources :users, only: [:create, :show, :update, :index]
  end

end
