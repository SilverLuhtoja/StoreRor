class ProductsController < ApplicationController
  # allow_unauthenticated_access only: %i[ index show modal]
  # TODO: SWITCH LATER
  # allow_unauthenticated_access only: %i[ index show modal create new edit update destroy]
  allow_unauthenticated_access

  before_action :set_product, only: %i[ show edit update destroy] # runs before any action method is executed

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
    @options = Option.all
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to :root
    else
      # render :new, status: :unprocessable_entity
      render :edit, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    option_ids = product_params.delete(:option_ids) || []
    if @product.update(product_params)
      @product.update_options_relations(option_ids)
      redirect_to products_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  def modal
    @product = Product.find(params[:id])
    render partial: "product_modal", locals: { product: @product }
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :width, :height, :featured_image, option_ids: [])
    end
end
