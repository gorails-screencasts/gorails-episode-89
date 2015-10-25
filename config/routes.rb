Rails.application.routes.draw do
  devise_for :users
  resources :answers
  resources :questions do
    collection do
      get :autocomplete
    end
  end
  resources :users

  root to: "questions#index"
end
