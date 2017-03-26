class ReportsController < ApplicationController
  def index
  	
  	@categories = Category.includes(:products).group(:category_id,
"categories.name").pluck("categories.name, count(products.category_id)")

@products_by_order =
 Product.includes(:orders)
 .group(:name, :product_id)
 .pluck("products.name", "count(orders.id)")
  end
end
