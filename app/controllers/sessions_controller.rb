class SessionsController < ApplicationController
    def login
        @user=User.find_by(email: params[:user][:email])
        if @user && @user.authenticate(params[:user][:password])
            session[:current_user_id]=@user.id
            redirect_to "/index"
            # render plain: "super"
        else
            render plain: "failed"
        end
    end
end
