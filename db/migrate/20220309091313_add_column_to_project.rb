class AddColumnToProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :project_type, :integer
  end
end
