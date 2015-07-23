class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :poster
      t.text :plot
      t.float :rating
      t.boolean :watchstatus
      t.string :genre

      t.timestamps null: false
    end
  end
end
