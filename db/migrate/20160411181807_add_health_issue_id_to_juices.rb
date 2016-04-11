class AddHealthIssueIdToJuices < ActiveRecord::Migration
  def change
    add_column :juices, :health_issue_id, :integer
  end
end
