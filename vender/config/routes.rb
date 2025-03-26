Rails.application.routes.draw do
  get '/products', to: 'products#index'  # Llamamos al método index del controlador products
end
