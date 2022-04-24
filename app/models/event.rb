class Event < ApplicationRecord
  before_create :generate_token

  # バリデーション
  validates :title, presence: true

  # アソシエーション
  belongs_to :host
  has_many :event_schedules, dependent: :destroy
  has_many :guests, dependent: :destroy

  accepts_nested_attributes_for :event_schedules, reject_if: :all_blank, allow_destroy: true

  private

  def generate_token
    self.token = SecureRandom.urlsafe_base64
  end
end
