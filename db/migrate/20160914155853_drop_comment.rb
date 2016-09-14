class DropComment < ActiveRecord::Migration[5.0]
  def change
    remove_column :images, :comment
  end
end
