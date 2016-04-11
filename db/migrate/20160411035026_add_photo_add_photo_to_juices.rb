class AddPhotoAddPhotoToJuices < ActiveRecord::Migration
  def change
    add_column :juices, :photo_id, :string
  end
end
