class RemoveGuardianFromCritters < ActiveRecord::Migration
  def change
    remove_column :critters, :guardian, :string
  end
end
