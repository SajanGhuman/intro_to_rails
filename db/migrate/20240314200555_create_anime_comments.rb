class CreateAnimeComments < ActiveRecord::Migration[7.1]
  def change
    create_table :anime_comments do |t|
      t.references :anime_list, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
