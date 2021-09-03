class CreateBillboards < ActiveRecord::Migration[6.1]
  def change
    create_table :billboards do |t|
      t.string :song_title
      t.string :album
      t.string :artist
      t.integer :week_num

      t.timestamps
    end
  end
end
