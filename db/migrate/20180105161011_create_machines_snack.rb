class CreateMachinesSnack < ActiveRecord::Migration[5.1]
  def change
    create_table :machines_snack do |t|
      t.references :snack, foreign_key: true
      t.references :machine, foreign_key: true
    end
  end
end
