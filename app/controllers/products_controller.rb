class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
  end

  private

  def product_params
    params.require(:product).permit(:name, :description)
  end

end
