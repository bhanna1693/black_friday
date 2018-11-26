class StorefrontController < ApplicationController
  def all_items
    @products = Product.all
  end

  def items_by_brand
    @brand = params[:brand]
    @products = Product.where(brand: @brand)
  end

  def items_by_category
    @category = Category.find(params[:category_id])
    @products = @category.products
  end
end
