class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :website
      t.integer :source
      t.string :email
      t.string :location

      t.timestamps
    end
  end
end
