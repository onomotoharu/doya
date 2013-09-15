class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.references :user, index: true
      t.integer :liked, :default => 10
      t.integer :userliked, :default => 10
      t.integer :tagsliked, :default => 10

      t.timestamps
    end
  end
end
