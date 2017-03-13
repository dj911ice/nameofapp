require 'rails_helper'

describe Product do
	before do
		@product = Product.create!(name: "dance shoes")
		@user = User.create!(email: "example@domain.com", password: "test1234")
		@product.comments.create!(rating: 1, user: @user, body: "Ugly shoes")
		@product.comments.create!(rating: 3, user: @user, body: "Nice shoes")
		@product.comments.create!(rating: 5, user: @user, body: "Awesome shoes")
	end	
	it "returns the average rating of all comments" do
		expect(@product.average_rating).to eq 3
	end
	it "is not valid" do
		expect(Product.new(description: "Great shoes")).not_to be_valid
	end
	it "is valid" do
		expect(Product.new(name: "childrens dance shoes", price: 75)).to be_valid
	end
end