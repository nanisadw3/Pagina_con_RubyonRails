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

    private

    def product_params
        params.require(:product).permit(:title, :description, :image)
    end
end
