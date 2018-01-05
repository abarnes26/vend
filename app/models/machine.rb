class Machine < ApplicationRecord
  has_and_belongs_to_many :snacks_machines
  has_and_belongs_to_many :snacks, through: :snacks_machines
  belongs_to :owner
end
