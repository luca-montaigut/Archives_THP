class Event < ApplicationRecord
  validates :start_date, :duration, :title, :description, :price, :location, presence: true
  validates :title, length: {minimum: 5, maximum: 140}
  validates :description, length: {minimum: 20, maximum: 1000}
  validates :price, numericality: {greater_than: 0, less_than_or_equal_to: 1000}
  validate :multiple_of_five
  validate :cant_be_zero
  validate :cant_be_past
  belongs_to :admin, class_name: 'User'
  has_many :attendances
  has_many :users, through: :attendances


  def end_date
    self.start_date + (self.duration * 60)
  end

private 

  def multiple_of_five
    errors.add(:duration, "has to be a multiple of 5") unless duration % 5 == 0 
  end

  def cant_be_zero
    errors.add(:duration, "can't be 0") if duration == 0
  end

  def cant_be_past
    errors.add(:start_date, "can't be past") if start_date < Time.now
  end

end
