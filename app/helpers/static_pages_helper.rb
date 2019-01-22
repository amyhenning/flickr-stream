module StaticPagesHelper
	def get_photos
		flickr = FlickRaw::Flickr.new
		begin
			@user_photos = flickr.photos.search(:user_id => params[:user_id], :per_page => 20)
		rescue FlickRaw::FailedResponse => e
			render json: "Search failed: #{e.msg}", status: :unprocessable_entity
		end
	end
end
