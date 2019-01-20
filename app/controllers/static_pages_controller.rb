class StaticPagesController < ApplicationController
	include StaticPagesHelper
	def home
		@user_id = params[:user_id]
		if !@user_id.blank?
			get_photos
		end
	end
end
