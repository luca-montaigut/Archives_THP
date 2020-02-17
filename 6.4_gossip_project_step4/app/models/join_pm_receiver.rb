class JoinPmReceiver < ApplicationRecord
  belongs_to :private_message
  belongs_to :recipient, class_name: "User"
end
