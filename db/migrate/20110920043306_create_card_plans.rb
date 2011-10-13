class CreateCardPlans < ActiveRecord::Migration
  def change
    create_table :card_plans do |t|
      t.references :student
      t.references :teaching
      t.string :smtMhs
      t.string :statusMK
      t.string :tahun_akademik
      t.string :semester
      t.references :score

      t.timestamps
    end
    add_index :card_plans, :student_id
    add_index :card_plans, :teaching_id
    add_index :card_plans, :score_id
  end
end
