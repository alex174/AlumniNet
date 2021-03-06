class SessionsController < ApplicationController
    

   def welcome
   end

    def new
    end
    

    def create
        user = User.find_by(username: params[:session][:username].downcase)
        if user&.authenticate(params[:session][:password])
           reset_session
           log_in user
           redirect_to '/welcome'
        else
           flash[:danger] = 'Invalid email/password combination'
           render 'new'
        end
    end

    def destroy 
       log_out
       redirect_to root_url
    end
end