class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    public # metodo publico
    def show
        @pr = Product.find(params[:id]) # mandamos por parametros el id del producto
    end

    public
    def new
            @producto = Product.new #crea un nuevo producto con los atrtibutos de la tabla vacios
    end
end
