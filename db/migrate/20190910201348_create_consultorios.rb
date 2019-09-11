class CreateConsultorios < ActiveRecord::Migration[6.0]
  def change
    create_table :consultorios do |t|
      t.string :nombre
      t.integer :codigo
      t.string :ubicacion
      t.string :tipo

      t.timestamps
    end
  end
end
