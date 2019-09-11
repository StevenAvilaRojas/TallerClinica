class Citum < ApplicationRecord
  belongs_to :consultorio
  belongs_to :medico
  belongs_to :paciente
end
