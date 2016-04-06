class CreateHealthIssues < ActiveRecord::Migration
  def change
    create_table :health_issues do |t|
      t.string :name
      t.string :diabeties
      t.string :urinary_tract_infection
      t.string :inflammatory
      t.string :high_blood_pressure
      t.string :immune_system_boost
      t.string :gluten_free
      t.string :insomnia
      t.string :iron_deficiency
      t.string :antioxidant
      t.string :cholesterol_lowerer
      t.string :eye_health
      t.string :healthy_teeth
      t.string :healthy_digestion
      t.timestamps null: false
    end
  end
end
