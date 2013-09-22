class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :key
      t.string :setting
      t.text :notes

      t.timestamps
    end
  end
end
