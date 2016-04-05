class CreateRemedies < ActiveRecord::Migration
  def change
    create_table :remedies do |t|

      t.timestamps null: false
    end
  end
end
