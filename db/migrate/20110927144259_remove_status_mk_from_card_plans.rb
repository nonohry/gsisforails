class RemoveStatusMkFromCardPlans < ActiveRecord::Migration
  def up
    remove_column :card_plans, :statusMK
  end

  def down
    add_column :card_plans, :statusMK, :string
  end
end
