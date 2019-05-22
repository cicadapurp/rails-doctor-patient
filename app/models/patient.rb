class Patient < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :appointmemts
end
