class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :mobile
      t.string :email
      t.string :password_digest
      t.string :address

      t.timestamps
    end
  end
end
