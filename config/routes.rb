Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  root 'tasks#index'

  resources :tasks

get 'completed', to: 'tasks#completed', as: 'completed_tasks'







  # get '/tasks', to: 'tasks#index', as: 'tasks'
  #
  #
  #
  # get '/tasks/new', to: 'tasks#new', as: 'new_task'
  # post '/tasks', to: 'tasks#create'
  #
  #
  #
  #
  # get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  # patch '/tasks/:id', to: 'tasks#update'
  #
  #
  # delete '/tasks/:id', to: 'tasks#destroy'
  #
  # match '/tasks/complete/:id', to: 'tasks#complete', as: 'complete_task', via: :put
  #
  # get '/tasks/:id', to: 'tasks#show', as: 'task'


end
