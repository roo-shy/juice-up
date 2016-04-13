class CreateJuicebars < ActiveRecord::Migration
  def change
    create_table :juicebars do |t|
      t.string :name
      t.string :location
      t.string :latitude
      t.string :longitude

      t.timestamps null: false
    end
  end
end
