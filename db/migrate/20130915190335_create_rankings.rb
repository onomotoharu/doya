class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.preferences :user
      t.integer :liked
      t.integer :userliked
      t.integer :tagsliked

      t.timestamps
    end
  end
end
