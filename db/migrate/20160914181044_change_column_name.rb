class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :images, :user_id, :profile_id
  end
end
