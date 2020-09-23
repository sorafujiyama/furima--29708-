class OrdersController < ApplicationController

  def index
    @item = Item.find(params[:item_id])
    if current_user == @item.user
      redirect_to root_path
    elsif user_signed_in?
    else
      redirect_to new_user_session_path
    end
  end

  def create
  end

end