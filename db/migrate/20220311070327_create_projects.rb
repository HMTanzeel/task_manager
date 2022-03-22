class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.boolean :active
      t.datetime :started_at
      t.datetime :close_at
      t.integer :project_type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
