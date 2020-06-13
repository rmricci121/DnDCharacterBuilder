class ApplicationController < ActionController::Base
     protect_from_forgery with: :exception
     before_action :is_logged_in?
     helper_method :current_user
   
     private
   
    def is_logged_in?
      !!session[:id]
    end

     def current_user
       User.find_by(id: session[:user_id])
     end

end
