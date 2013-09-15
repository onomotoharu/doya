class AddLikeToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :like, :integer, :default => 0
  end
end
