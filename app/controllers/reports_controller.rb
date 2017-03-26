class ReportsController < ApplicationController
  def index
  	
  	@categories = Category.includes(:products).group(:category_id,
"categories.name").pluck("categories.name, count(products.category_id)")
  end
end
