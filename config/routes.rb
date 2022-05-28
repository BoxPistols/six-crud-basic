Rails.application.routes.draw do
  get 'lists/new'
  post 'lists' => 'lists#create' #create action

  # get 'lists/index'
  get 'lists' => 'lists#index'

  get 'lists/show'

  get 'lists/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'

end
