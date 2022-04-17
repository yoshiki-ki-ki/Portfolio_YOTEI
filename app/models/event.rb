class Event < ApplicationRecord
  # バリデーション
  validates :title, presence: true
  
  # アソシエーション
  belongs_to :host
  has_many :event_schedules, dependent: :destroy
  has_many :guests, dependent: :destroy
  
  accepts_nested_attributes_for :event_schedules, reject_if: :all_blank, allow_destroy: true
end
