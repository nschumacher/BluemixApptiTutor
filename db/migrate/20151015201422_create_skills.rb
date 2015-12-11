class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.integer :One
      t.string :AAC

      t.timestamps null: false
    end
  end
end
