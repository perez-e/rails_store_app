RailStore::Application.routes.draw do
    root to: "products#homepage"

    get "/products", to: "products#index"
    get "/products/:id", to: "products#show", as: :product

    get "/categories", to: "categories#index"
    get "/categories/new", to: "categories#new"
    get "/categories/:id", to: "categories#show", as: :category
    post "/categories", to: "categories#create"
end
