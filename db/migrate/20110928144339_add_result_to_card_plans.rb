class AddResultToCardPlans < ActiveRecord::Migration
  def change
    add_column :card_plans, :result, :integer
  end
end
