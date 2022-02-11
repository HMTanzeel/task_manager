class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :discription
      t.string :started_at
      t.string :close_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
