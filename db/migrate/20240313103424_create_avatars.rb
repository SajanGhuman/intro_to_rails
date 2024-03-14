class CreateAvatars < ActiveRecord::Migration[7.1]
  def change
    create_table :avatars do |t|
      t.string :real
      t.string :fav_char
      t.string :user_id

      t.timestamps
    end
  end
end
