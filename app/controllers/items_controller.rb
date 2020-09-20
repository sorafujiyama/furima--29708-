class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    @items = Item.all.order(id: "DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
    @shopping_day = ShoppingDay.find(@item.shopping_days_id)
  end

  private
  def item_params
    params.require(:item).permit(:image, :name, :decription, :category_id, :status_id, :shopping_cost_id, :shopping_area_id, :shopping_days_id, :price).merge(user_id: current_user.id)
  end

end