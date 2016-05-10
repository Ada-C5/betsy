class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :current_order, :current_user_is_owner

  def current_user
    @user ||= User.find_by(id: session[:user_id])
  end

  def current_user_is_owner
    session[:user_id] == params[:user_id]
  end

  def current_order
    # check if an order is already stored in the session
    order ||= Order.find_by(id: session[:order_id])

    # if no order exists, create a new one and store its id in sessions hash
    if order.nil?
      order = Order.create(order_state: "pending")
      session[:order_id] = order.id
    end

    # return the instance of order
    return order
  end

  def reset_cart
    #reduce inventory for each product
    to_remove = OrderItem.where(order_id: session[:order_id])
    to_remove.each do |ordered_product|
      remove_from = Product.find(ordered_product.product_id)
      new_stock = remove_from.stock - ordered_product.quantity
      remove_from.update(stock: new_stock)
    end

    #reset session order_id & clear current cart
    session[:order_id] = nil
  end
end
