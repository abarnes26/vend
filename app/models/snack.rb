class Snack < ApplicationRecord
  has_many :snacks_machines
  has_many :machines, through: :snacks_machines

end
