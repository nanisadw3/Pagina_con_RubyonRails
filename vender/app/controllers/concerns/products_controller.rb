# Declaración de la clase
class ProductsController < ApplicationController # Heredamos de ApplicationController que es de Rails
    def index # Método index
        @products = Product.all # Variable de instancia que contiene todos los productos obtenemos todos los productos de la base de datos
    end
end
# Fin de la clase
