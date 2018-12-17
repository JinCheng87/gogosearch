class CreateTagsUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :tags_urls do |t|
      t.belongs_to :tag
      t.belongs_to :url
      t.timestamps
    end
  end
end
