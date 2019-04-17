class WelcomeController < ApplicationController
  def index
  end

	def search
	@salons =  Salon.all
	  filtering_params(params).each do |key,value|
	    @salons = @salons.public_send(key, value) if value.present?
	    if @salons.empty?
	      flash.now[:notice] = "Sorry there are no results for your search. Try again."
	    end
	    @salons = @salons.page(params[:page])
	    respond_to do |format|
	      format.js
	      format.html {render "index"}
	    end
	  end


	def about
	    @about = @welcome.about
  	end
    	helper_method :about

end

private

  def filtering_params(params)
    params.slice(:country, :location, :suburb )
  end


end