require 'rails_helper'

RSpec.describe AddressOrder, type: :model do
  before do
    @address_order = FactoryBot.build(:address_order)
  end

  describe "商品購入" do
    context "商品購入がうまくいくとき" do
      
      it "建物名が空でも購入できる" do
        @address_order.building = nil
        expect(@address_order).to be_valid
      end
      it "建物名以外が存在すれば購入できる" do
        expect(@address_order).to be_valid
      end
      it "電話番号はハイフンは不要で、11桁以内だと購入できる" do
        @address_order.tel = "09012345678"
        expect(@address_order).to be_valid
      end
    end

    context "商品購入がうまくいかないとき" do
      
      it "郵便番号が空だと購入できない" do
        @address_order.postal_code = nil
        @address_order.valid?
        expect(@address_order.errors.full_messages).to include("Postal code is invalid")
      end
      it "郵便番号に-を含まないと購入できない" do
        @address_order.postal_code = "-"
        @address_order.valid?
        expect(@address_order.errors.full_messages).to include("Postal code is invalid")
      end
      it "都道府県が空だと購入できない" do
        @address_order.prefecture_id = 1
        @address_order.valid?
        expect(@address_order.errors.full_messages).to include("Prefecture must be other than 1")
      end
      it "市区町村が空だと購入できない" do
        @address_order.municipality = nil
        @address_order.valid?
        expect(@address_order.errors.full_messages).to include("Municipality can't be blank")
      end
      it "番地が空だと購入できない" do
        @address_order.address = nil
        @address_order.valid?
        expect(@address_order.errors.full_messages).to include("Address can't be blank")
      end
      it "電話番号が空だと購入できない" do
        @address_order.tel = nil
        @address_order.valid?
        expect(@address_order.errors.full_messages).to include("Tel can't be blank", "Tel is invalid")
      end
      it "電話番号が11桁以上だと購入できない" do
        @address_order.tel = "123456789123"
        @address_order.valid?
        expect(@address_order.errors.full_messages).to include("Tel is invalid")
      end
      it "電話番号に-が含まれていると購入できない" do
        @address_order.tel = "-"
        @address_order.valid?
        expect(@address_order.errors.full_messages).to include("Tel is invalid")
      end
    end
  end
end
