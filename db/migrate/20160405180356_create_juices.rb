class CreateJuices < ActiveRecord::Migration
  def change
    create_table :juices do |t|
      t.string :name
      t.integer :juice_id
      t.integer :health_issue_id

      t.timestamps null: false
    end
  end
end
