class RemoveCityFromCritters < ActiveRecord::Migration
  def change
    remove_column :critters, :city, :string
  end
end
