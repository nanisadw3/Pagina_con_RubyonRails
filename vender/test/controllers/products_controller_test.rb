class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "renderiza la lista de productos" do
    get products_path
    assert_response :success
    # hacemos una peticion a products_path (que es lo mismo que poner /products en el nabegador) y esperamos que la respuesta sea exitosa
    assert_select ".product", 2
  end
  test "muestra un producto" do
        get product_path(products(:PS4))
        assert_response :success
        assert_select ".title", "PS4"
        assert_select ".description", "En buen estado"
        assert_select ".price", "$150"
  end
end
