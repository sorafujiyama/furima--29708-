class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
  end

  private
  def item_params
    params.require(:item).permit(:image, :name, :decription, :category, :status, :shopping_cost, :shopping_area, :shopping_days, :price).merge(user_id: current_user.id)
  end

end