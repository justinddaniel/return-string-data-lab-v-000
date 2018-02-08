class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to "/products/#{@product.id}"
    else
      render :new
    end
  end

  def body
   product = Product.find(params[:id])
   render plain: product.description
  end

  def available
    product = Product.find(params[:id])
    available = product.inventory > 0 ? "true" : "false"
    render plain: available
  end

  private

  def product_params
    params.require(:product).permit(:name, :description)
  end

end
