module StaticPagesHelper
	def get_photos
		flickr = FlickRaw::Flickr.new
		@user_photos = flickr.photos.search(:user_id => params[:user_id], :per_page => 20)
	end
end
