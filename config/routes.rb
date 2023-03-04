Rails.application.routes.draw do
  get '/' => "homes#top",as:"top"
  get 'lists/new',as:"new_list"
  post "lists" => "lists#create"

  get 'lists'=>"lists#index"

  get 'lists/:id/edit'=>"lists#edit" , as:"edit_list"
  patch "lists/:id" => "lists#update" ,as:"update_list"

  get "lists/:id" => "lists#show",as:"list"
  delete "lists/:id" => "lists#destroy" ,as:"destroy_list"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
