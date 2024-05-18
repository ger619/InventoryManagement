class QuantityController < ApplicationController
  before_action :authenticate_user!

  def index
    @quantity = Quantity.all.order('created_at DESC')
  end

  def show
    @quantity = Quantity.find(params[:id])
  end

  def new
    @quantity = Quantity.new
  end

  def create
    @quantity = Quantity.new(quantity_params)
    @quantity.user_id = current_user.id

    respond_to do |format|
      if @quantity.save
        format.html { redirect_to quantity_index_path(@quantity), notice: 'Quantity was successfully created.' }
      else
        format.html { redirect_to quantity_index_url, notice: 'Failure' }
      end
    end
  end

  def destroy
    @quantity = Quantity.find(params[:id])
    @quantity.delete
    respond_to do |format|
      format.html { redirect_to quantity_index_path, notice: 'Quantity was successfully deleted.' }
    end
  end

  def edit
    @quantity = Quantity.find(params[:id])
  end

  def update
    @quantity = Quantity.find(params[:id])
    respond_to do |format|
      if @quantity.update(quantity_params)
        format.html { redirect_to quantity_url(@quantity.id), notice: 'Quantity was successfully updated.' }
      else
        format.html { redirect_to quantity_index_url, notice: 'Failure' }
      end
    end
  end

  private

  def quantity_params
    params.permit(:price, :number, :date_received, :condition, :product_id, :user_id)
  end
end
