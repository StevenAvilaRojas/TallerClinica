class CreateMedicos < ActiveRecord::Migration[6.0]
  def change
    create_table :medicos do |t|
      t.string :nombres
      t.string :apellidos
      t.integer :num_id
      t.integer :num_cel
      t.string :tipo_medico

      t.timestamps
    end
  end
end
