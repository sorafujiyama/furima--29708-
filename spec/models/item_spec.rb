require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品登録' do
    context '商品出品登録がうまくいくとき' do
      it "すべての項目が存在すれば登録できる" do
        expect(@item).to be_valid
      end
    end

    context '商品出品登録がうまくいかないとき' do
      it "商品名が空だと出品できない" do
        @item.name = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end
      it "商品説明が空だと出品できない" do
        @item.decription = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Decription can't be blank")
      end
      it "カテゴリーが空だと出品できない" do
        @item.category = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Category is not a number")
      end
      it "商品の状態が空だと出品できない" do
        @item.status = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Status is not a number")
      end
      it "配送料の負担が空だと出品ができない" do
        @item.shopping_cost = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Shopping cost is not a number")
      end
      it "発送元の地域が空だと出品できない" do
        @item.shopping_area = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Shopping area is not a number")
      end
      it "発送までの日数が空だと登録できない" do
        @item.shopping_days_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Shopping days is not a number")
      end
      it "価格が空だと出品できない" do
        @item.price = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end
    end
  end
end
