class UsersController < ApplicationController
  skip_before_action :ensure_user_logged_in
  def create
    puts user_param[:first_name]
    user = User.new(user_param)

    user["first_name"] = user_param[:first_name]
    # user[:password] = user_param[:password_digest]

    puts user.to_s
    
   if user.save
    redirect_to "/login"
   else     
  #  redirect_to "/register"
   render plain: 'register'
   end
  end


  private
  def user_param
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end



end
