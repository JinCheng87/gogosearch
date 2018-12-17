class CreateUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :urls do |t|
      t.string :title,                null: false
      t.string :address,                null: false
      t.integer :frequency,              null: true, default: 0
      t.timestamps
    end
  end
end
