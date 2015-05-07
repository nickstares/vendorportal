class OrdersController < ApplicationController
  before_action :authenticate_user!
  def create 
    Order.create(quantity: order_params["quantity"], user_id: current_user.id)
    redirect_to :back
  end


  def destroy
    Order.destroy(params[:id])
    redirect_to :back
  end

  private
  def order_params
    params.require(:order).permit( :quantity)
  end
end
