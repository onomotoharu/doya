class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.references :user, index: true
      t.integer :liked, :default => 0
      t.integer :userliked, :default => 0
      t.integer :tagsliked, :default => 0

      t.timestamps
    end
  end
end
