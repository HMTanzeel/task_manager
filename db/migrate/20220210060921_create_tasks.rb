class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :discription
      t.datetime :started_at
      t.datetime :close_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
