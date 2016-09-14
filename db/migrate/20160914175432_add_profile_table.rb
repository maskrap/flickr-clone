class AddProfileTable < ActiveRecord::Migration[5.0]
  def change
    create_table :profile do |t|
      t.string :avatar
      t.integer :user_id
    end
  end
end
