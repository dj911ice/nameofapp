class Product < ApplicationRecord
	has_many :orders
	has_many :comments
	validates :name, presence: true
	# validates :description, presence: true
	# validates :image_url, presence: true
	# validates :colour, presence: true
	# validates :price, presence: true
	def self.search(search_term)
		if Rails.env == "development"
			@products = Product.where("name LIKE ?", "%#{search_term}%")
		else
			@products = Product.where("name ilike ?", "%#{search_term}%")
		end
	end

	def highest_rating_comment
		comments.rating_desc.first
	end
	def lowest_rating_comment
		comments.rating_desc.last
	end
	def average_rating
		comments.average(:rating).to_f
	end
	def views
		$redis.get("product:#{id}") # get product id
	end
	def viewed!
		$redis.incr("product:#{id}") # increment product id
	end
end
