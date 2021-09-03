class Song < ApplicationRecord
  belongs_to :artist

  validates :name, :duration presence: true

  # can we validate more?
  validates :duration, numericality: true
end
