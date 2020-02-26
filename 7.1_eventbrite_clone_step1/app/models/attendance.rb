class Attendance < ApplicationRecord
  after_create :participation_send

  belongs_to :user
  belongs_to :event

  def participation_send
    UserMailer.participation_email(self).deliver_now
  end
end
