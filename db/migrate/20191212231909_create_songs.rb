class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.belongs_to :album, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true, null: false
      t.string :name, null: false
      t.text :notes
      t.boolean :favourite

      t.timestamps null: false
    end
  end
end
