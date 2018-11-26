class CartController < ApplicationController
  before_action :authenticate_user!, except: [:add_to_cart, :view_order, :delete_from_cart]

  def add_to_cart
    @order = current_order

    # make sure we don't duplicate a product in our line items
    line_item = @order.line_items.find_by(product_id: params[:product_id])

    if line_item.blank?
      line_item = @order.line_items.new(product_id: params[:product_id], quantity: params[:quantity])
      @order.save
      session[:order_id] = @order.id
    else
      line_item.update(quantity: line_item.quantity += params[:quantity].to_i)
    end

    line_item.update(line_item_total: (line_item.quantity * line_item.product.price))

    redirect_back(fallback_location: root_path)
  end


  def view_order
    @line_items = current_order.line_items
  end


  def checkout
    line_items = current_order.line_items

    unless line_items.length == 0
      current_order.update(user_id: current_user.id, subtotal: 0)

      @order = current_order

      line_items.each do |line_item|
        line_item.product.update(quantity: (line_item.product.quantity - line_item.quantity))
        @order.order_items[line_item.product.id] = line_item.quantity
        @order.subtotal += line_item.line_item_total
      end
      @order.save

      @order.update(sales_tax: (@order.subtotal * 0.07))
      @order.update(grand_total: (@order.sales_tax + @order.subtotal))

      session[:order_id] = nil    
    end
  end


  def order_complete
    @order = Order.find(params[:order_id])
    @order.line_items.destroy_all
    @amount = (@order.grand_total.to_f.round(2) *100).to_i

    customer = Stripe::Customer.create(
      :email => current_user.email,
      :card => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer => customer.id,
      :amount => @amount,
      :description => "Rails Stripe Customer",
      :currency => 'usd'
    )

    rescue Stripe::CardError => e
      flash[:error] = e.message

    # redirect_to cart_path
  end

  def remove_from_cart
    line_item = LineItem.find(params[:id])
    line_item.destroy 

    redirect_to view_order_path
  end

  def edit_line_item
    line_item = LineItem.find(params[:id])
    line_item.update(quantity: line_item.quantity += params[:quantity].to_i)    
  end
    
end















