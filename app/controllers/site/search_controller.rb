class Site::SearchController < SiteController

	def ads
		@ads = Ad.search(params[:q], params[:page])
		@categories = Category.all

		cookies[:search_term] = params[:q]
		cookies[:categories] = @categories.to_json
		puts "=========================== >> #{cookies[:categories]}"
	end
end
