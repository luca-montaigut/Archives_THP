class Doctor < ApplicationRecord
  belongs_to :city
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :join_table_doctor_specialties
  has_many :specialties, through: :join_table_doctor_specialties
end
