Rails.application.routes.draw do
  devise_for :users
  root 'tasks#index' # TasksController, index action
  resources :tasks, only: [:create, :destroy, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
