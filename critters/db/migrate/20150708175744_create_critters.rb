class CreateCritters < ActiveRecord::Migration
  def change
    create_table :critters do |t|
      t.string :name
      t.references :type, index: true, foreign_key: true
      t.references :owner, index: true, foreign_key: true
      t.text :hobby
      t.string :photo_url

      t.timestamps null: false
    end
  end
end
