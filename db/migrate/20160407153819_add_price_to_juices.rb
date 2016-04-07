class AddPriceToJuices < ActiveRecord::Migration
  def change
    add_column :juices, :price, :integer
  end
end
