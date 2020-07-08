class CreateCertifications < ActiveRecord::Migration[6.0]
  def change
    create_table :certifications do |t|
      t.integer :profile_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
