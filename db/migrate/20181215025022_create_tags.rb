class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :name,                   null: false
      t.integer :frequency,              null: true, default: 0
      t.timestamps
    end
  end
end
