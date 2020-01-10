class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :picture
      t.text :bio
      t.integer :user_id
      t.string :pronouns

      t.timestamps
    end
  end
end
