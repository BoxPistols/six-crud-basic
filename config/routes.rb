Rails.application.routes.draw do
  get 'lists/new'
  post 'lists' => 'lists#create' #create action
  get 'lists' => 'lists#index'
  get 'lists/show'
  get 'lists/edit'
  get 'top' => 'homes#top'
  get 'lists' => 'lists#index'
  get 'lists/:id' => 'lists#show', as: 'list'
end