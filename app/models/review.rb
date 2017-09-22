class Review < ApplicationRecord

	enum status: { draft: 0, published: 1 }


	validates_presence_of :service_purchased, :body

	def no_of_stars
    Review.all.pluck(:rating).sum / Review.all.pluck(:rating).count.to_f
  end
end
