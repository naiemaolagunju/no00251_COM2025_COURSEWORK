class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :image
      t.text :notes
      t.boolean :favourite

      t.timestamps
    end
  end
end
