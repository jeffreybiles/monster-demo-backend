class AddPriceToMonster < ActiveRecord::Migration
  def change
    add_column :monsters, :price, :decimal, scale: 2, precision: 5
  end
end
