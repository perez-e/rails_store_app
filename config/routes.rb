RailStore::Application.routes.draw do
    get "/products", to: "products#index"
    get "/products/:id", to: "products#show", as: :product

    get "/categories", to: "categories#index"
    get "/categories/:id", to: "categories#show", as: :category
end
