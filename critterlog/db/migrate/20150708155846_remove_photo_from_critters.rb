class RemovePhotoFromCritters < ActiveRecord::Migration
  def change
    remove_column :critters, :photo, :string
  end
end
