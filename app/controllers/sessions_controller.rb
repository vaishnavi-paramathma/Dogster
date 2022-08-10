# frozen_string_literal: true

class SessionsController < ApplicationController
  skip_before_action :ensure_user_logged_in
  def login
    @user = User.find_by(email: params[:user][:email])
    if @user&.authenticate(params[:user][:password])
      session[:current_user_id] = @user.id
      redirect_to '/index'
    else
      render plain: 'failed'
    end
  end
end
