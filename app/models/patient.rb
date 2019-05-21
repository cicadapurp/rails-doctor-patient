class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors through: :appointmemts
end
