class Editforeignkey < ActiveRecord::Migration[5.0]
  def change
    rename_column :images, :profile_id, :user_id
  end
end
