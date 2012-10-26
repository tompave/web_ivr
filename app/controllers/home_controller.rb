class HomeController < ApplicationController

	# GET /home - root_path
	def home
	
		respond_to do |format|
			format.html
			# format.xml { render :xml => @foobar } #.to_xml }
			# format.json { render :json => @foobar } #.to_json }
		end
	end
	
	
end
