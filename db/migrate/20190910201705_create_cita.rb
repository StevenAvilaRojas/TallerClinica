class CreateCita < ActiveRecord::Migration[6.0]
  def change
    create_table :cita do |t|
      t.belongs_to :consultorio, null: false, foreign_key: true
      t.belongs_to :medico, null: false, foreign_key: true
      t.belongs_to :paciente, null: false, foreign_key: true
      t.date :fecha
      t.time :hora_inicio
      t.time :hora_fin
      t.string :motivo

      t.timestamps
    end
  end
end
