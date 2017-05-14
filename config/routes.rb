Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/rests", to: "rests#index"
  get "/rests/new", to: "rests#new"
  post "/rests", to: "rests#create"
  get "/rests/:id", to: "rests#show"
  get "/rests/:id/edit", to: "rests#edit"
  patch "/rests/:id", to: "rests#update"
  delete "rests/:id", to: "rests#destroy"
end
