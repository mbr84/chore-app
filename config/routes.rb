Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    resources :families, only: [:create, :show, :update]
    resources :users, only: [:create, :show, :update, :index]
  end

end
