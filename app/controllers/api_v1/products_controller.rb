class ApiV1::ProductsController < ApiController

  def index
    @products = Product.all
    # render json: @products.to_json
  end

  def show
    @product = Product.find_by(id: params[:id])
    if @product 
      render json: @product.to_json 
    else
      render json: { message: :failed! }, status: 400
    end
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: { message: :ok! }
    else
      render json: { message: :failed! }, status: 400
    end
  end

  private

    def product_params
      params.permit(:title, :price, :description)
    end
end
