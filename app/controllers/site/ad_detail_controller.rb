class Site::AdDetailController < SiteController

	def show
		@categories = Category.order_by_description
		@ad = Ad.find(params[:id])

		# respond_to do |format|
		# 	format.html #view html.erb
		# 	format.json { render json: @ad, except: [:description, :description_md] }
		# 	format.xml { render xml: @ad, except: [:description, :description_md] }
		# end
	end
end
