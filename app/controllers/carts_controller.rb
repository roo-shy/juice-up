class CartsController < ApplicationController

  def add_to_cart
    @juice = Juice.find_by id: params[:juice_id]
    order = Order.find_by status: 'cart', user_id: @current_user.id
    if order.nil?
      order = Order.new
      order.user = @current_user
      order.purchased_at = Time.now
      order.save!
    end

  order_item = OrderItem.find_by order_id: order.id, juice_id: @juice.id
  if order_item.present?
    order_item.quantity = order_item.quantity + 1
  else
    order_item = OrderItem.new
    order_item.order = order
    order_item.juice = @juice
    order_item.price = @juice.price
    order_item.shipping_cost = 0
    order_item.quantity = 1
  end
  order_item.save!

  redirect_to cart_path
end

  def remove_from_cart
    @order = Order.find_by status: 'cart', user_id: @current_user.id
    @juice = Juice.find_by id: params[:juice_id]

    order_item = OrderItem.find_by order_id: @order.id, juice_id: @juice.id
    order_item.destroy
    redirect_to cart_path
  end

  def view
    @order = Order.find_by status: 'cart', user_id: @current_user.id
    @juicebars = Juicebar.all
  end

  def start
    @order = Order.find_by status: 'cart', user_id: @current_user.id
  end

  def process_payment
    @order = Order.find_by status: 'cart', user_id: @current_user.id

    card_token = params[:stripeToken]
    Stripe.api_key = "sk_test_nS1fPRl8hr8ALmJydiCFejvd"

    Stripe::Charge.create(
    :amount => @order.total_price_in_cents,
    :currency => "usd",
    :source => card_token,
    :description => @order.description
    )

   @order.update status: 'pending'
   redirect_to receipt_path(id: @order.id)
  end

  def receipt
    @order = Order.find_by! id: params[:id], user_id: @current_user.id
  end
end
