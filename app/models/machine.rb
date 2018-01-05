class Machine < ApplicationRecord
  has_many :machines_snack
  has_and_belongs_to_many :snacks, through: :machines_snack
  belongs_to :owner
end
