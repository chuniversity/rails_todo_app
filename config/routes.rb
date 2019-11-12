Rails.application.routes.draw do
  root 'tasks#index'              # TasksController, index action
  post '/tasks' => 'tasks#create' # TasksController, create action
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
