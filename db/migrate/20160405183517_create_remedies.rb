class CreateRemedies < ActiveRecord::Migration
  def change
    create_table :remedies do |t|
      t.integer :juice_id
      t.integer :health_issue_id
      t.timestamps null: false
    end
  end
end
