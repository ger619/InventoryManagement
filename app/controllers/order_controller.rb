class OrderController < ApplicationController
  before_action! authenicatate_user!

  # Create a new order that checks on the avialable quantity of the product
  # before creating the order
  def add
    @order = Order.new(order_params)
    @order.user_id = current_user.id
    @order.status = 'pending'
    @order.total = @order.product.price * @order.quantity
    @order.quantity = @order.product.quantity
    @order.save
    redirect_to order_url(@order), notice: 'Order was successfully created.'

    # If the quantity is less than 10, indicate low stock
  end
end
