RailStore::Application.routes.draw do
    root to: "products#homepage"

    get "/products", to: "products#index"
    get "/products/new", to: "products#new"
    get "/products/:id", to: "products#show", as: :product
    get "/products/:id/edit", to: "products#edit"
    patch "/products/:id", to: "products#update"
    delete "/products/:id", to: "products#destroy"
    post "/products", to: "products#create"

    get "/categories", to: "categories#index"
    get "/categories/new", to: "categories#new"
    get "/categories/:id", to: "categories#show", as: :category
    get "/categories/:id/edit", to: "categories#edit"
    patch "/categories/:id", to: "categories#update"
    delete "/categories/:id", to: "categories#destroy"
    post "/categories", to: "categories#create"
end
