class Changecolumnname < ActiveRecord::Migration[7.0]
  def change
    change_table :tasks do |t|
      t.rename :discription, :description
    end
  end
end
