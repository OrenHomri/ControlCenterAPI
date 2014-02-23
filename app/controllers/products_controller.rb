class ProductsController < ApplicationController
	
  	def index
  	end

  	def top_products
  		product_type = params['product_type']
  		render :json => {"Products"=>[{"GID" => "GID1001","Name" => "DM_1001"},{"GID" => "GID1002","Name" => "DM_1002"},{"GID" => "GID1003","Name" => "DM_1003"}]}
  	end  
end