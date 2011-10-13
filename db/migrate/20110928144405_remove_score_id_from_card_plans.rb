class RemoveScoreIdFromCardPlans < ActiveRecord::Migration
  def up
    remove_column :card_plans, :score_id
  end

  def down
    add_column :card_plans, :score_id, :integer
    add_index :card_plans, :score_id
  end
end
