class AddGuardianToCritters < ActiveRecord::Migration
  def change
    add_reference :critters, :guardian, index: true, foreign_key: true
  end
end
