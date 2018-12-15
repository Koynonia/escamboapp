class Site::HomeController < SiteController
  def index
  	# Exemplo do uso do cookie da Session
  	session[:name] = "Fernando"
  	puts "================= >> #{session[:name]}"

  	@categories = Category.order_by_description
  	@ads = Ad.descending_order(params[:page])
  	@carousel = Ad.random(3)
  end
end
