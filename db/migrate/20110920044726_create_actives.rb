class CreateActives < ActiveRecord::Migration
  def change
    create_table :actives do |t|
      t.string :nama

      t.timestamps
    end
  end
end
