class AddPhotoToHealthIssues < ActiveRecord::Migration
  def change
    add_column :health_issues, :photo_id, :string
  end
end
