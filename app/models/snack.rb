class Snack < ApplicationRecord
  has_many :machines_snack
  has_and_belongs_to_many :machines, through: :machines_snack

end
