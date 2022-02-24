# require 'support/factory_girl'
require 'factory_bot_rails'

FactoryBot.define do
	sequence(:email) {|n| "user#{n}@example.com"}
	sequence(:password) {|n| "#{n}"}
	sequence(:first_name) {|n| "#{n}"}
	sequence(:last_name) {|n| "#{n}"}

	factory :user do
		# email 'anna@example.com'
		email
		# password 'test1234'
		password
		# first_name 'Anna'
		first_name
		# last_name 'Maria'
		last_name
		admin {false}
	end
	factory :admin, class: User do
		# email 'anna2@example.com'
		email
		# password 'test5678'
		password
		first_name {'Admin'}
		last_name {'User'}
		admin {true}
	end
end
