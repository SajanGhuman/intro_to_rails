class CreateUserAnimeLists < ActiveRecord::Migration[7.1]
  def change
    create_table :user_anime_lists do |t|
      t.references :user, null: false, foreign_key: true
      t.references :anime_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
