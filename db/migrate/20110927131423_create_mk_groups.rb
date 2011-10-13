class CreateMkGroups < ActiveRecord::Migration
  def change
    create_table :mk_groups do |t|
      t.string :kode
      t.string :nama
      t.text :keterangan

      t.timestamps
    end
  end
end
