class MainController < ApplicationController
before_action :authenticate_user!
  def index
    @user = current_user
    @name = @user.name
    @location = @user.location
    @phone = @user.phone
    @order = Order.new
    @orders = Order.where(user_id: @user.id)
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to :back
  end

  def message
    
  end

private 

def user_params
  params.require(:user).permit( :name, :location, :phone )
end

end
