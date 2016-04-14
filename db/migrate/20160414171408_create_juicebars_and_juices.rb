class CreateJuicebarsAndJuices < ActiveRecord::Migration
  def change
    create_table :juicebars_juices do |t|
      t.belongs_to :juicebar, index: true
      t.belongs_to :juice, index: true
    end
  end
end
