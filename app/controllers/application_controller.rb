class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    helper_method :current_user
    def not_found_method
      render file: Rails.public_path.join('404.html'), status: :not_found, layout: false
    end
    
    def current_user
        if session[:user_id]
            @current_user ||= User.find(session[:user_id])
        end
    end

    def authorize
        if !current_user
          flash[:notice] = "Please sign up before you can view the posts"
          redirect_to '/'
        end
    end
end
