class CreateRegOrdens < ActiveRecord::Migration[5.2]
  def change
    create_table :reg_ordens do |t|
      t.references :cliente, foreign_key: true
      t.date :fecha

      t.timestamps
    end
  end
end
