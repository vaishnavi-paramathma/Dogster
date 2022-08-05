class HomeController < ApplicationController
  skip_before_action :ensure_user_logged_in
  def index
   @current_user = current_user
   puts "xxxxxxxxxxxxxxx"
   puts @current_user.id

  end
  def aboutus
  end
  
end
