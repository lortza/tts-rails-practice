class CreateGuardians < ActiveRecord::Migration
  def change
    create_table :guardians do |t|
      t.string :name
      t.string :city
      t.references :country, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
