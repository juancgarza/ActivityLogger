class ActivityLog < ApplicationRecord
  validates   :baby_id , :assistant_id , :activity_id ,  presence: true

  belongs_to :assistant
  belongs_to :baby
  belongs_to :activity

scope :in_progress, -> { where("duration is NULL")}

scope :with_assistant_name, lambda { |assistant_name|
  where(assistant: { name: assistant_name }).joins(:assistant)
}
scope :with_baby_name, lambda { |baby_name|
  where(baby: { name: baby_name }).joins(:baby)
}


end
