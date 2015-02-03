class CreateWives < ActiveRecord::Migration
  def change
    create_table :wives do |t|
      t.string :name
      t.integer :husband_id
      t.timestamps null: false
    end
  end
end
