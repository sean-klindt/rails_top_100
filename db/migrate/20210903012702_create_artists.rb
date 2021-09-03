class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :num_of_albums
      t.belongs_to :billboard, null: false, foreign_key: true

      t.timestamps
    end
  end
end
