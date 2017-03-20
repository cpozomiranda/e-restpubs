class OrdersController < ApplicationController
  def create
  	@product = Product.find(params[:product_id])
  	@request = Request.find(params[:request_id])

    @order = Order.new(price:@product.price)
    @order.product = @product
    @order.request = @request
    
    if @order.save
      respond_to do |f|
        f.html
        f.json
        f.js
      end
    end
  end

  def destroy
  	@order = Order.find(params[:id])
    @request = @order.request
    @order.destroy
    respond_to do |f|
      f.html
      f.json
      f.js
    end
  end

  def show
    @order = Order.all
    
  end

end
