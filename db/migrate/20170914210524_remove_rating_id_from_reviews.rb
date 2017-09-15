class RemoveRatingIdFromReviews < ActiveRecord::Migration[5.0]
  def change
  	remove_column :reviews, :rating_id, :integer
  end
end
