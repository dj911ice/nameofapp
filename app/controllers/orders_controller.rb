class OrdersController < ApplicationController
	protect_from_forgery prepend: true
	before_action :authenticate_user!
	def index
	end

	def show
	end

	def new
	end

	def create
	end

	def destroy
	end
	
end