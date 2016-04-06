class CreateHealthIssues < ActiveRecord::Migration
  def change
    create_table :health_issues do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
