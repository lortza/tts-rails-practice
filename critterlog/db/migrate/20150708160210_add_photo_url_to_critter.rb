class AddPhotoUrlToCritter < ActiveRecord::Migration
  def change
    add_column :critters, :photo_url, :string
  end
end
