class RemovesongTitleandartistfrombillboards < ActiveRecord::Migration[6.1]
  def change
    remove_column :billboard, :song_title
  end
end
