class SetCachedTitles < ActiveRecord::Migration
  def change
    Reason.all.each do |reason|
      reason.last_post_title = reason.posts.last.title
      reason.save!
    end
  end
end
