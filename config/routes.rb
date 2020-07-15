Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do

    #User Routes
    post "/users/" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    #Sessions
    post "/sessions" => "sessions#create"

    #Songs
    post "/songs" => "songs#create"
    get "/songs/:id" => "songs#show"
    patch "/songs/:id" => "songs#update"
    delete "/songs/:id" => "songs#destroy"

    #Comments
    post "/comments" => "comments#create"
    patch "/comments/:id" => "comments#update"
    delete "/comments/:id" => "comments#destroy"

    #Tag Routes
    get "/tags" => "tags#index"

    #Comment_Tag Routes
    post "/comments" => "commenttags#create"
    delete "/comments/:id" => "commenttags#destroy"

  end
end
