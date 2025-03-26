class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def create
        @product = Product.new(product_params)
        if @product.save
            # Aquí se asigna la imagen manualmente
            @product.image.attach(params[:product][:image]) if params[:product][:image]
            redirect_to @product
        else
            render :new
        end
    end

    private # metodo privado

    def product_params
        params.require(:product).permit(:title, :description, :image)
    end

    public # metodo publico
    def show
        @pr = Product.find(params[:id]) # mandamos por parametros el id del producto
    end
end
