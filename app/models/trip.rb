class Trip < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
