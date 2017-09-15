module ReviewsHelper


	def average_rating
  	Review.all.pluck(:rating).sum / Review.all.pluck(:rating).count.to_f
	end
end
