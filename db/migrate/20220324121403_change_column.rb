class ChangeColumn < ActiveRecord::Migration[7.0]
  def change
    change_table :clients do |t|
      t.change :first_name, :string, null: false, default: ""
      t.change :last_name, :string, null: false, default: ""
      t.change :email, :string, null: false, default: ""
    end
  end
end
