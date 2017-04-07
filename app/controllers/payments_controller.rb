class PaymentsController < ApplicationController
	def create
		@product = params[:product_id]
		@user = current_user
		# Create the charge on Stripe's servers - this will charge the user's card
		token = params[:stripeToken]
		begin
			charge = Stripe::Charge.create(
				:amount => (@product.price*100).to_i , # amount in cents, again
				:currency => 'chf',
				:source => token,
				:description => params[:stripeEmail]
				:receipt_email => email: @user.email
				)
			if charge.paid
				Order.create(product_id: @product.id, user_id: @user.id, total: @product.price)
			end
		rescue Stripe::CardError => e
			# The card has been declined
			body = e.json_body
			err = body[:error]
			flash[:error] = "Unfortunately, there was an error in processing your payment: #{err[:message]}"
		end
		redirect_to product_path(@product)
	end
end
