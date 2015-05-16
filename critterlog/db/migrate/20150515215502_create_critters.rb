class CreateCritters < ActiveRecord::Migration
  def change
    create_table :critters do |t|
      t.string :name
      t.string :breed
      t.string :city
      t.text :hobbies
      t.string :guardian
      t.string :photo

      t.timestamps null: false
    end
  end
end
