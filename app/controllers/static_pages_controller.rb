class StaticPagesController < ApplicationController
	include StaticPagesHelper
	def home
		@user_id = params[:user_id]
	end
end
