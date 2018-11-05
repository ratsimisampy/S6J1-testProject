class SessionsController < ApplicationController


	def new
	end

	def create
	user = User.find_by(email: params[:session][:email].downcase)
	if user && user.authenticate(params[:session][:password])
	  log_in user
	  redirect_to root_url
	else
	  flash.now[:danger] = 'Invalid email/password combination'
	  render 'new'
	end
	end

	def destroy
	  session[:user_id] = nil      
	  redirect_to root_url
	end

	def log_in(user)
	  session[:user_id] = user.id
	end

	def current_user
	  if session[:user_id]
	    User.find_by(id: session[:user_id])
	  end
	end

end
