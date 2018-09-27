class Site::HomeController < ApplicationController
  layout "site"
  
  def index
  	#raise "teste erro!"
  	@categories = Category.all
  end
end
