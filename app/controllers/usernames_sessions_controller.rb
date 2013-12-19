class UsernamesSessionsController < ApplicationController

	def new
		@username = Username.new			
	end

	def create
		if @username = login(params[:username],params[:password])
			redirect_back_or_to(posts_path, message: "Logueado")
		else
			flash.now[:alert] = "Ocurrio un problema"
			render action: :new
		end
	end

	def destroy
		logout
		redirect_to(root_path, message: "Logged out")
	end
end
