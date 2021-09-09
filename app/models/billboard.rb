class Billboard < ApplicationRecord
  has_many :album, dependent: :destroy
  validates :album,  presence: true 
  validates :week_num, numericality: true
end
