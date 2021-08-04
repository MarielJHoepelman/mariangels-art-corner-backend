class ProductsController < ApplicationController
  def index
    products = Product.all
    render_json(products)
  end

  def show
    product = Product.find_by(page_name: params[:page_name])
    render_json(product)
  end

  private
  def render_json(data)
    render :json => data.to_json(:methods => [:product_image])
  end
end
