class User < ApplicationRecord
  has_many :trips, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_trips, through: :favorites, source: :trip
end
