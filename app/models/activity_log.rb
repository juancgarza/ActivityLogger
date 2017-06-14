class ActivityLog < ApplicationRecord
  validates   :baby_id , :assistant_id , :activity_id ,  presence: true

  belongs_to :assistant
  belongs_to :baby
  belongs_to :activity

end
