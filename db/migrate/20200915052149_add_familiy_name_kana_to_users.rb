class AddFamiliyNameKanaToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :familiy_name_kana, :string
  end
end
