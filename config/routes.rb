Rails.application.routes.draw do
  resources :petts

  get "/signup" => "users#new"
  post "/users" => "users#create"
end
