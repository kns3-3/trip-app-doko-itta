class User < ApplicationRecord
  has_secure_password
  has_many :trips, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_trips, through: :favorites, source: :trip
end
