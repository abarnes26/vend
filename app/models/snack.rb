class Snack < ApplicationRecord
  has_and_belongs_to_many :machines, through: :snacks_machines
  has_and_belongs_to_many :snacks_machines

end
