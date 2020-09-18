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
    params.require(:item).permit(:image, :name, :decription, :category_id, :status_id, :shopping_cost_id, :shopping_area_id, :shopping_days_id, :price).merge(user_id: current_user.id)
  end

end