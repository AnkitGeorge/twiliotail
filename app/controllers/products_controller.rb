class ProductsController < ApplicationController

  before_action :set_product, only: [:show, :edit, :destroy, :update]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to products_url
    else
      render :new
    end

  end

  def update

    if @product.update_attributes(product_params)
      redirect_to product_path(@product)
    else
      render :edit
    end

  end

  def destroy

    @product.destroy
    redirect_to products_path

  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price_in_dollars)
  end

  def :set_product
    @product = Product.find(params[:id])
  end

end
