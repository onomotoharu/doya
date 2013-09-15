class AddTagstextToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :tagstext, :string
  end
end
