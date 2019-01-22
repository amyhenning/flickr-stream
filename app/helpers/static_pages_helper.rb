module StaticPagesHelper
	def get_photos
		flickr = FlickRaw::Flickr.new
		begin
			@user_photos = flickr.photos.search(:user_id => @user_id, :per_page => 20)
			render partial: '/flickr/user_photos'
		rescue FlickRaw::FailedResponse
			render partial: '/flickr/user_error'
		end
	end
end
