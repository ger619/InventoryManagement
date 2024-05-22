class CartController < ApplicationController
  def show
    @render_cart = false
  end

  def add
    @quantity = Quantity.find_by(id: params[:id])
    quant = params[:quant].to_i
    current_order = @cart.orderables.find_by(quantity_id: @quantity.id)

    if current_order && quant.positive?
      current_order.update(quant:)
    elsif quant <= 0
      current_order.destroy
    else
      @cart.orderables.create(quantity: @quantity, quant:)
    end

    respond_to do |format|
      format.html { redirect_to quantity_index_path(@quantity), notice: 'Product was successfully added to cart.' }
      format.turbo_stream do
        render turbo_stream: [turbo_stream.replace('cart',
                                                   partial: 'cart/cart',
                                                   locals: { cart: @cart }),
                              turbo_stream.replace(@product)]
      end
    end
  end

  def remove
    Orderable.find_by(id: params[:id]).destroy
  end
end
