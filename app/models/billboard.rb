class Billboard < ApplicationRecord
  has_many :artist, dependent: :destroy

  validates :artist, :song_title, :album,  presence: true 
  validates :week_num, numericality: true

end
