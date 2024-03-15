class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :kanji_name
      t.string :image
      t.string :know_more

      t.timestamps
    end
  end
end
