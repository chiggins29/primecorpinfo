class Review < ApplicationRecord

	enum status: { draft: 0, published: 1 }


	validates_presence_of :service_purchased, :body
end
