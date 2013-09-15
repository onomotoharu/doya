class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      # t.string :image
      t.has_attached_file :image
      t.references :user, index: true

      t.timestamps
    end
  end
end
