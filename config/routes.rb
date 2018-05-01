Rails.application.routes.draw do
  devise_for :users
  root to: 'site#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :recruiters, only: [:index, :create, :destroy, :update]
      resources :ratings, only: [:index, :create, :destroy, :update]
    end
  end
end
