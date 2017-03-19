class OrdersController < ApplicationController
  def create
  	@product = Product.find(params[:product_id])
  	@order = Order.new(product_id:params[:product_id], request_id:params[:request_id], price:@product.price)
  	@order.save
  	@request = Request.find(params[:request_id])
  	redirect_to @request
  end

  def destroy
  	@order = Order.find(params[:order_id])
    @request = @order.request
    @order.delete
    redirect_to @request
  end
end
