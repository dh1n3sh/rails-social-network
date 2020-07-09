class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :name, unique: true
      t.string :icon

      t.timestamps
    end
  end
end
