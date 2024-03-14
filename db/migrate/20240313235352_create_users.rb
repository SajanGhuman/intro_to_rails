class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.integer :age
      t.string :pimage

      t.timestamps
    end
  end
end