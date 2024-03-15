class CreateNews < ActiveRecord::Migration[7.1]
  def change
    create_table :news do |t|
      t.string :readMore
      t.string :title
      t.string :author
      t.string :image_url

      t.timestamps
    end
  end
end
