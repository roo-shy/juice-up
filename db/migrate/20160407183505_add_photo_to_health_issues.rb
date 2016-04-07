class AddPhotoToHealthIssues < ActiveRecord::Migration
  def change
    add_column :health_issues, :string
    attachment :photo
  end
end
