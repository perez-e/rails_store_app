RailStore::Application.routes.draw do
    root to: "products#homepage"

    get "/products", to: "products#index"
    get "/products/:id", to: "products#show", as: :product

    get "/categories", to: "categories#index"
    get "/categories/:id", to: "categories#show", as: :category
    get "/categories/new", to: "categories#new"
end
