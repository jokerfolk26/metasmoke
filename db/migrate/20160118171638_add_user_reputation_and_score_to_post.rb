class AddUserReputationAndScoreToPost < ActiveRecord::Migration
  def change
    add_column :posts, :user_reputation, :integer
    add_column :posts, :score, :integer
    add_column :posts, :upvote_count, :integer
    add_column :posts, :downvote_count, :integer
  end
end
