class SessionsController < ApplicationController
	def login
		if Rails.application.config.passphrase.blank?
			flash[:notice] = 'Passphrase not configured'
			respond_to do |format|
				format.html { redirect_to root_url }
				format.json { render json: {error: 'Not Configured'}, status: :forbidden }
			end
		elsif params[:passphrase] == Rails.application.config.passphrase
			session[:logged_in] = true
			flash[:notice] = 'Welcome aboard'
			respond_to do |format|
				format.html { redirect_to root_url }
				format.json { head :ok }
			end
		else
			flash[:notice] = 'Not authorized'
			respond_to do |format|
				format.html { redirect_to root_url }
				format.json { render json: {error: 'Not authorized'}, status: :unauthorized }
			end
		end
	end
end
