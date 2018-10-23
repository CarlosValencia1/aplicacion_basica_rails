class CreateOrdens < ActiveRecord::Migration[5.2]
  def change
    create_table :ordens do |t|
      t.references :producto, foreign_key: true
      t.integer :cantidad
      t.float :precio_venta

      t.timestamps
    end
  end
end
