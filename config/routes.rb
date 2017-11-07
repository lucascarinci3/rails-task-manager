Rails.application.routes.draw do
  root to: 'restaurants#index'
  # GET '/tasks': get all your tasks.
  get 'restaurants', to: 'restaurants#index'

  # GET '/tasks/new': get the form to create a new task
  get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'

 # POST '/tasks': post a new task
  post 'restaurants', to: 'restaurants#create'

  # GET '/tasks/:id': get a precise task, e.g GET '/tasks/3' fetches the task with id=3
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'

  # GET '/tasks/:id/edit': get the form to edit an existing task
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'

  # PATCH '/tasks/:id': update an existing task
  patch 'restaurants/:id', to: 'restaurants#update'

  # DELETE '/tasks/:id': delete an existing task
  delete 'restaurants/:id', to: 'restaurants#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
