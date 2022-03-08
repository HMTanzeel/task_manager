class FixName < ActiveRecord::Migration[7.0]
  def change
    rename_column :projects, :discription, :description
  end
end
