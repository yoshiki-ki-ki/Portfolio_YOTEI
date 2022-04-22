class Guest < ApplicationRecord
  belongs_to :event
  has_many :guest_schedules, dependent: :destroy
  
  accepts_nested_attributes_for :guest_schedules, reject_if: :all_blank, allow_destroy: true
end
