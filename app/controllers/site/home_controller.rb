class Site::HomeController < SiteController
  def index
  	cookies[:user_name] = "David"
  	cookies[:lat_long] = JSON.generate([47.68, -122.37])
  	cookies[:login] = { value: "XJ-122", expires: 1.hour.from_now }
  	cookies.signed[:user_id] = "Fernando M. Oliveira"
  	cookies.encrypted[:discount] = "EscamboApp"

  	@categories = Category.order_by_description
  	@ads = Ad.descending_order(params[:page])
  	@carousel = Ad.random(3)

  	puts "=========================== >> #{cookies[:user_name]}"
  	puts "=========================== >> #{eval(cookies[:lat_long]).class}"
  end
end
