Rails.application.routes.draw do
  get "/products", to: "products#index"  # Llamamos al método index del controlador products
  get "products/new", to: "products#new", as: :newProduct # Llamamos al método new del controlador products para crear un nuevo producto
  get "/products/:id", to: "products#show", as: :product  # Llamamos al método show del controlador products para ver productos "especificos"
  # por eso se deve de poner el , as: :product
end
