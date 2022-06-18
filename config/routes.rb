Rails.application.routes.draw do
  get 'lists/new'
  get 'lists/edit'
  get 'top' => 'homes#top'
  post 'lists' => 'lists#create' #create action
  get 'lists' => 'lists#index'
  get 'lists/:id' => 'lists#show', as: 'list'
end