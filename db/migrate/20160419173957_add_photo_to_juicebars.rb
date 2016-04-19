class AddPhotoToJuicebars < ActiveRecord::Migration
  def change
    add_column :juicebars, :photo_id, :string
  end
end
