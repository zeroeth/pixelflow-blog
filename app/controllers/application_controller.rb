class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def authenticated
	if session[:logged_in].blank?
		flash[:notice] = 'Not authorized'
		respond_to do |format|
			format.html { redirect_to root_url }
			format.json { render json: {error: 'Not authorized'}, status: :unauthorized }
		end
	end
  end
end
