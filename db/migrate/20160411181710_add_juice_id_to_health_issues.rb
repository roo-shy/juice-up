class AddJuiceIdToHealthIssues < ActiveRecord::Migration
  def change
    add_column :health_issues, :juice_id, :integer
  end
end
