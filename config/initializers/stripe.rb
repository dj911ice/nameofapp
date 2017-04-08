if Rails.env.production?
	Rails.configuration.stripe = {
		:publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
		:secret_key => ENV['STRIPE_SECRET_KEY']
	}
else
	Rails .configuration.stripe = {
		:publishable_key => ENV['pk_test_QFzzuGwHkQHAThJpRRXF3RTC'],
		:secret_key => ENV['sk_test_jKaqlGCEAlCwVMfEkvxSF90Z']
	}
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]