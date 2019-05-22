class Patient < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :appointmemts

  def full_name
    "#{self.first_name} #{self.last_name}"

  end
end
