class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :tag
      t.string :title
      t.string :comment
      t.integer :user_id
      t.timestamps
    end
  end
end
