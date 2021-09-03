class Artist < ApplicationRecord
  belongs_to :billboard
  has_many :song dependent: :destroy

  validates :name, :album presence: true
  
end
