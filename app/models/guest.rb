class Guest < ApplicationRecord
  validates :guest_name, presence: true
  validates :password, presence: true
  belongs_to :event
  has_many :guest_schedules, dependent: :destroy

  has_secure_password

  accepts_nested_attributes_for :guest_schedules, reject_if: :all_blank, allow_destroy: true
end
