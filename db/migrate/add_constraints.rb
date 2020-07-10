class AddConstraints < ActiveRecord::Migration[6.0]
    def change
      add_index :skills, :name, :unique => true
    end
  end