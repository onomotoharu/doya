class Ranking < ActiveRecord::Base
  belongs_to :user

  def self.ranked(user)

    Ranking.where(user_id: user).first_or_create!

  end

  def self.update(user)
    photos = Photo.find_all_by_user_id(user)

    tags = []
    photos.each{|photo|
      tags.push(photo.tags)
    }

    puts tags
    # points = tags.uniq.map{|tag| Tag.find_by_name(tag).like}
    # puts points

  end


end