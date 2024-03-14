class CreateAnimeLists < ActiveRecord::Migration[7.1]
  def change
    create_table :anime_lists do |t|
      t.string :eng_name
      t.string :jap_name
      t.string :type
      t.integer :episode
      t.string :status
      t.string :rating
      t.timestamps
    end
  end
end

