class SessionsController < ApplicationController
    def create
      @user = User.authenticate(params[:email], params[:password])
      if @user
        flash[:notice] = "You've signed in."
        session[:user_id] = @user.id
        redirect_to "/posts"
      else
        flash[:alert] = "There was a problem signing in. Please try again."
        redirect_to "/my_network_admin"
      end
    end
  
    def destroy
      session[:user_id] = nil
      flash[:notice] = "You've signed out."
      redirect_to "/"
    end
  end