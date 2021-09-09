class RemovesongTitleandartistfrombillboards < ActiveRecord::Migration[6.1]
  def change
    remove_column :billboards, :song_title
  end
end
