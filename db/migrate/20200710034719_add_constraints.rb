class AddConstraints < ActiveRecord::Migration[6.0]
  def change
    add_index :skills, :name, :unique => true
    add_index :certifications, [:profile_id, :skill_id], unique: true
    change_column_null :profiles, :name, false
  end
end
